// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_article_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltArticleSource> _$builtArticleSourceSerializer =
    new _$BuiltArticleSourceSerializer();

class _$BuiltArticleSourceSerializer
    implements StructuredSerializer<BuiltArticleSource> {
  @override
  final Iterable<Type> types = const [BuiltArticleSource, _$BuiltArticleSource];
  @override
  final String wireName = 'BuiltArticleSource';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BuiltArticleSource object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltArticleSource deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltArticleSourceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltArticleSource extends BuiltArticleSource {
  @override
  final String? id;
  @override
  final String name;

  factory _$BuiltArticleSource(
          [void Function(BuiltArticleSourceBuilder)? updates]) =>
      (new BuiltArticleSourceBuilder()..update(updates))._build();

  _$BuiltArticleSource._({this.id, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'BuiltArticleSource', 'name');
  }

  @override
  BuiltArticleSource rebuild(
          void Function(BuiltArticleSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltArticleSourceBuilder toBuilder() =>
      new BuiltArticleSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltArticleSource && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BuiltArticleSource')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class BuiltArticleSourceBuilder
    implements Builder<BuiltArticleSource, BuiltArticleSourceBuilder> {
  _$BuiltArticleSource? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  BuiltArticleSourceBuilder();

  BuiltArticleSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltArticleSource other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltArticleSource;
  }

  @override
  void update(void Function(BuiltArticleSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BuiltArticleSource build() => _build();

  _$BuiltArticleSource _build() {
    final _$result = _$v ??
        new _$BuiltArticleSource._(
            id: id,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'BuiltArticleSource', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
