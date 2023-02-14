import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'built_article_source.dart';


part 'built_article.g.dart';


abstract class BuiltArticle implements Built<BuiltArticle, BuiltArticleBuilder> {

  String? get author;
  String get title;
  String? get description;
  String get url;
  String? get urlToImage;
  String get content;
  DateTime get publishedAt;

  BuiltArticleSource get source;

  BuiltArticle._();

  factory BuiltArticle([Function(BuiltArticleBuilder b) updates]) = _$BuiltArticle;

  static Serializer<BuiltArticle> get serializer => _$builtArticleSerializer;
}