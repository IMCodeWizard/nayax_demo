import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


part 'built_article_source.g.dart';


abstract class BuiltArticleSource implements Built<BuiltArticleSource, BuiltArticleSourceBuilder> {

  String? get id;
  String get name;

  BuiltArticleSource._();

  factory BuiltArticleSource([Function(BuiltArticleSourceBuilder b) updates]) = _$BuiltArticleSource;

  static Serializer<BuiltArticleSource> get serializer => _$builtArticleSourceSerializer;
}