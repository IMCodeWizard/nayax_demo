// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltArticle> _$builtArticleSerializer =
    new _$BuiltArticleSerializer();

class _$BuiltArticleSerializer implements StructuredSerializer<BuiltArticle> {
  @override
  final Iterable<Type> types = const [BuiltArticle, _$BuiltArticle];
  @override
  final String wireName = 'BuiltArticle';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltArticle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'publishedAt',
      serializers.serialize(object.publishedAt,
          specifiedType: const FullType(DateTime)),
      'source',
      serializers.serialize(object.source,
          specifiedType: const FullType(BuiltArticleSource)),
    ];
    Object? value;
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.urlToImage;
    if (value != null) {
      result
        ..add('urlToImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltArticle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'urlToImage':
          result.urlToImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'source':
          result.source.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltArticleSource))!
              as BuiltArticleSource);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltArticle extends BuiltArticle {
  @override
  final String? author;
  @override
  final String title;
  @override
  final String description;
  @override
  final String url;
  @override
  final String? urlToImage;
  @override
  final String content;
  @override
  final DateTime publishedAt;
  @override
  final BuiltArticleSource source;

  factory _$BuiltArticle([void Function(BuiltArticleBuilder)? updates]) =>
      (new BuiltArticleBuilder()..update(updates))._build();

  _$BuiltArticle._(
      {this.author,
      required this.title,
      required this.description,
      required this.url,
      this.urlToImage,
      required this.content,
      required this.publishedAt,
      required this.source})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'BuiltArticle', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, r'BuiltArticle', 'description');
    BuiltValueNullFieldError.checkNotNull(url, r'BuiltArticle', 'url');
    BuiltValueNullFieldError.checkNotNull(content, r'BuiltArticle', 'content');
    BuiltValueNullFieldError.checkNotNull(
        publishedAt, r'BuiltArticle', 'publishedAt');
    BuiltValueNullFieldError.checkNotNull(source, r'BuiltArticle', 'source');
  }

  @override
  BuiltArticle rebuild(void Function(BuiltArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltArticleBuilder toBuilder() => new BuiltArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltArticle &&
        author == other.author &&
        title == other.title &&
        description == other.description &&
        url == other.url &&
        urlToImage == other.urlToImage &&
        content == other.content &&
        publishedAt == other.publishedAt &&
        source == other.source;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, urlToImage.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BuiltArticle')
          ..add('author', author)
          ..add('title', title)
          ..add('description', description)
          ..add('url', url)
          ..add('urlToImage', urlToImage)
          ..add('content', content)
          ..add('publishedAt', publishedAt)
          ..add('source', source))
        .toString();
  }
}

class BuiltArticleBuilder
    implements Builder<BuiltArticle, BuiltArticleBuilder> {
  _$BuiltArticle? _$v;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _urlToImage;
  String? get urlToImage => _$this._urlToImage;
  set urlToImage(String? urlToImage) => _$this._urlToImage = urlToImage;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  BuiltArticleSourceBuilder? _source;
  BuiltArticleSourceBuilder get source =>
      _$this._source ??= new BuiltArticleSourceBuilder();
  set source(BuiltArticleSourceBuilder? source) => _$this._source = source;

  BuiltArticleBuilder();

  BuiltArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _author = $v.author;
      _title = $v.title;
      _description = $v.description;
      _url = $v.url;
      _urlToImage = $v.urlToImage;
      _content = $v.content;
      _publishedAt = $v.publishedAt;
      _source = $v.source.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltArticle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltArticle;
  }

  @override
  void update(void Function(BuiltArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BuiltArticle build() => _build();

  _$BuiltArticle _build() {
    _$BuiltArticle _$result;
    try {
      _$result = _$v ??
          new _$BuiltArticle._(
              author: author,
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'BuiltArticle', 'title'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'BuiltArticle', 'description'),
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'BuiltArticle', 'url'),
              urlToImage: urlToImage,
              content: BuiltValueNullFieldError.checkNotNull(
                  content, r'BuiltArticle', 'content'),
              publishedAt: BuiltValueNullFieldError.checkNotNull(
                  publishedAt, r'BuiltArticle', 'publishedAt'),
              source: source.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'source';
        source.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BuiltArticle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
