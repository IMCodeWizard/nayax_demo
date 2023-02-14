


import 'dart:ffi';

import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:intl/intl.dart';

import '../data_models/built_articles_models/built_article.dart';
import 'articles_api_service.dart';

class ArticlesDataManager {

  Future<List<BuiltArticle>> retrieveArticles() async {
    BuiltList<BuiltArticle> articles = await _prepareRemoteArticlesData();
    return articles.toList();
  }


  //Private methods for remote data
  Future<BuiltList<BuiltArticle>> _prepareRemoteArticlesData() async {
    BuiltList<BuiltArticle> articles = BuiltList();

    String dateNow = DateFormat('yyyy-MM-dd').format(DateTime.now());

    ArticlesApiService articlesApiService = ArticlesApiService.create();
    Response<BuiltList<BuiltArticle>> telsaArticle = await articlesApiService.getArticles(q: 'tesla', from: dateNow);
    Response<BuiltList<BuiltArticle>> appleArticle = await articlesApiService.getArticles(q: 'apple', from: dateNow);

    articles += telsaArticle.body ?? BuiltList();
    articles += appleArticle.body ?? BuiltList();

    return articles;
  }
}