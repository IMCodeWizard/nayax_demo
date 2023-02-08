import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:nayax_demo/core/data_models/built_articles_models/built_article.dart';
import 'package:nayax_demo/core/service/articles_api_service.dart';
import 'package:provider/provider.dart';

class ArticlesListScreen extends StatefulWidget {
  const ArticlesListScreen({super.key});

  @override
  State<ArticlesListScreen> createState() => _ArticlesListScreenState();
}

class _ArticlesListScreenState extends State<ArticlesListScreen> {
  ///Manage data
  BuiltList<BuiltArticle> _collectionData = BuiltList();
  bool _isLoading = false;

  set isLoading(bool value) {
    setState(() {
      _isLoading = value;
    });
  }

  void _resetCollectionData() {
    setState(() {
      _collectionData = BuiltList();
    });
  }

  Future _refreshCollectionData() async {
    _resetCollectionData();
    _isLoading = true;

    var articles = await _prepareDataCollection();
    _isLoading = false;

    if (articles.isNotEmpty) {
      setState(() {
        _collectionData = articles;
      });
    }
  }


  ///Data Collection
  Future<BuiltList<BuiltArticle>> _prepareDataCollection() async {
    BuiltList<BuiltArticle> articles = BuiltList();

    await Future.wait([
      getTeslaArticles().then((value) => articles += value),
      //getAppleArticles().then((value) => articles += value),
    ]);

    return articles;
  }

  Future<BuiltList<BuiltArticle>> getTeslaArticles() async {
    Response<BuiltList<BuiltArticle>> telsaArticle = await context.read<ArticlesApiService>().getArticles(q: 'tesla');
    return telsaArticle.body ?? BuiltList();
  }

  Future<BuiltList<BuiltArticle>> getAppleArticles() async {
    Response<BuiltList<BuiltArticle>> appleArticle = await context.read<ArticlesApiService>().getArticles(q: 'apple');
    return appleArticle.body ?? BuiltList();
  }


  ///Setup UI
  Row _buildFloatingButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            _refreshCollectionData();
          },
          child: const Icon(Icons.refresh),
        ),
        const SizedBox(width: 8),
        FloatingActionButton(
          onPressed: () {
            _resetCollectionData();
          },
          child: const Icon(Icons.clear),
        ),
      ],
    );
  }

  Widget _buildArticlesList(BuildContext context, BuiltList<BuiltArticle> articles) {
    if (articles.isEmpty && !_isLoading) {
      return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                  Icons.error_outline,
                  size: 60
              ),
              Text('No Articles',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text('Tap refresh button',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 24,
                ),
              ),
            ],
          ));
    }
    else if (articles.isEmpty && _isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    else {
      return Center(
        child: ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return _prepareListTile(articles[index]);
          },
        ),
      );
    }
  }

  Card _prepareListTile(BuiltArticle article) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 10,
      child: ListTile(
        style: ListTileStyle.drawer,
        horizontalTitleGap: 10,
        isThreeLine: true,
        leading: _prepareImage(article.urlToImage),
        title: Text(article.title),
        subtitle: Text(article.description),
      ),
    );
  }

  Widget _prepareImage(String? imageUrl) {
    if (imageUrl != null) {
      return CachedNetworkImage(
        width: 60,
        fit: BoxFit.fitWidth,
        imageUrl: imageUrl,
        placeholder: (context, url) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        },
        errorWidget: (context, url, error) {
          return const Icon(
              Icons.broken_image,
              size: 60
          );
        },
        fadeOutDuration: const Duration(seconds: 1),
        fadeInDuration: const Duration(seconds: 2),
      );
    }
    else {
      return const Icon(
        Icons.image_not_supported,
        size: 60,
      );
    }
  }


  ///Lifecycle
  @override
  void initState() {
    super.initState();

    _refreshCollectionData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles'),
      ),
      body: _buildArticlesList(context, _collectionData),
      floatingActionButton: _buildFloatingButtons(),
    );
  }
}

