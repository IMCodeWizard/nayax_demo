import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';



import 'data_models/built_articles_models/built_article.dart';
import 'data_models/built_articles_models/built_article_source.dart';


part 'serializers.g.dart';


@SerializersFor([BuiltArticle, BuiltArticleSource])
final Serializers serializers = (_$serializers.toBuilder()
  ..add(Iso8601DateTimeSerializer())
  ..addPlugin(StandardJsonPlugin())
).build();