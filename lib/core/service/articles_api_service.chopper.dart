// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ArticlesApiService extends ArticlesApiService {
  _$ArticlesApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ArticlesApiService;

  @override
  Future<Response<BuiltList<BuiltArticle>>> getArticles({
    String q = 'tesla',
    int pageSize = 10,
    String from = '2023-01-08',
    String sortBy = 'publishedAt',
    String apiKey = apiKey,
  }) {
    final Uri $url = Uri.parse('/everything');
    final Map<String, dynamic> $params = <String, dynamic>{
      'q': q,
      'pageSize': pageSize,
      'from': from,
      'sortBy': sortBy,
      'apiKey': apiKey,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<BuiltList<BuiltArticle>, BuiltArticle>($request);
  }
}
