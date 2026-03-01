// ignore_for_file: unused_element, unnecessary_cast

import 'method_map.dart';
import 'options.dart';

/// CollectionOverride allows resource handling overrides for specific resources within a BaseType
class CollectionOverride {
  /// The collection that identifies this resource within its service.
  final String? collection;
  /// Custom verb method mappings to support unordered list API mappings.
  final MethodMap? methodMap;
  /// The options to apply to this resource-level override
  final Options? options;

  /// Creates a new [CollectionOverride].
  /// [collection] The collection that identifies this resource within its service.
  /// [methodMap] Custom verb method mappings to support unordered list API mappings.
  /// [options] The options to apply to this resource-level override
  CollectionOverride({
    this.collection,
    this.methodMap,
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': ?collection,
      'methodMap': ?methodMap == null ? null : methodMap!.toMap(),
      'options': ?options == null ? null : options!.toMap(),
    };
  }

  factory CollectionOverride.fromMap(Map<String, dynamic> map) {
    return CollectionOverride(
      collection: map['collection'] == null ? null : map['collection'] as String,
      methodMap: map['methodMap'] == null ? null : MethodMap.fromMap((map['methodMap'] as Map).cast<String, dynamic>()),
      options: map['options'] == null ? null : Options.fromMap((map['options'] as Map).cast<String, dynamic>()),
    );
  }
}

