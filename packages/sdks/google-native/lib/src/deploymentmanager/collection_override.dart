// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_map.dart';
import 'options.dart';

/// CollectionOverride allows resource handling overrides for specific resources within a BaseType
class CollectionOverride {
  /// The collection that identifies this resource within its service.
  final pulumi.Input<String>? collection;
  /// Custom verb method mappings to support unordered list API mappings.
  final pulumi.Input<MethodMap>? methodMap;
  /// The options to apply to this resource-level override
  final pulumi.Input<Options>? options;

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
      'methodMap': ?pulumi.Input.mapOptionalInputValue<MethodMap, Map<String, dynamic>>(methodMap, (value) => value.toMap()),
      'options': ?pulumi.Input.mapOptionalInputValue<Options, Map<String, dynamic>>(options, (value) => value.toMap()),
    };
  }

  factory CollectionOverride.fromMap(Map<String, dynamic> map) {
    return CollectionOverride(
      collection: map['collection'] == null ? null : (map['collection']! as String).input(),
      methodMap: map['methodMap'] == null ? null : (MethodMap.fromMap((map['methodMap']! as Map).cast<String, dynamic>())).input(),
      options: map['options'] == null ? null : (Options.fromMap((map['options']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

