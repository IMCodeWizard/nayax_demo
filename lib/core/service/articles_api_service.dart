import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';

import '../constants.dart';
import '../built_value_converter.dart';
import '../data_models/built_articles_models/built_article.dart';

part 'articles_api_service.chopper.dart';

@ChopperApi(baseUrl: '/everything')
abstract class ArticlesApiService extends ChopperService {

  @Get()
  Future<Response<BuiltList<BuiltArticle>>> getArticles({
    @Query() String q = 'tesla',
    @Query() int pageSize = 10,
    @Query() String from = '2023-01-08',
    @Query() String sortBy = 'publishedAt',
    @Query() String apiKey = apiKey,
  });

  static ArticlesApiService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse(baseUrl),
      services: [
        _$ArticlesApiService(),
      ],
      interceptors: [
        HttpLoggingInterceptor(),
      ],
      converter: BuiltValueConverter(),
    );
    return _$ArticlesApiService(client);
  }

}