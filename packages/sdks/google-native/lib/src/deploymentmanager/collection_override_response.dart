// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_map_response.dart';
import 'options_response.dart';

/// CollectionOverride allows resource handling overrides for specific resources within a BaseType
class CollectionOverrideResponse {
  /// The collection that identifies this resource within its service.
  final pulumi.Input<String> collection;
  /// Custom verb method mappings to support unordered list API mappings.
  final pulumi.Input<MethodMapResponse> methodMap;
  /// The options to apply to this resource-level override
  final pulumi.Input<OptionsResponse> options;

  /// Creates a new [CollectionOverrideResponse].
  /// [collection] The collection that identifies this resource within its service.
  /// [methodMap] Custom verb method mappings to support unordered list API mappings.
  /// [options] The options to apply to this resource-level override
  const CollectionOverrideResponse({
    required this.collection,
    required this.methodMap,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': collection,
      'methodMap': pulumi.Input.mapInputValue<MethodMapResponse, Map<String, dynamic>>(methodMap, (value) => value.toMap()),
      'options': pulumi.Input.mapInputValue<OptionsResponse, Map<String, dynamic>>(options, (value) => value.toMap()),
    };
  }

  factory CollectionOverrideResponse.fromMap(Map<String, dynamic> map) {
    return CollectionOverrideResponse(
      collection: pulumi.Input.fromValue(map['collection'] as String),
      methodMap: pulumi.Input.fromValue(MethodMapResponse.fromMap((map['methodMap']! as Map).cast<String, dynamic>())),
      options: pulumi.Input.fromValue(OptionsResponse.fromMap((map['options']! as Map).cast<String, dynamic>())),
    );
  }
}
