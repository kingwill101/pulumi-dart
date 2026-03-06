// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference_response.dart';

/// Not supported by Cloud Run.
class ConfigMapKeySelectorResponse {
  /// Not supported by Cloud Run.
  final pulumi.Input<String> key;
  /// Not supported by Cloud Run.
  final pulumi.Input<LocalObjectReferenceResponse> localObjectReference;
  /// Not supported by Cloud Run.
  final pulumi.Input<String> name;
  /// Not supported by Cloud Run.
  final pulumi.Input<bool> optional;

  /// Creates a new [ConfigMapKeySelectorResponse].
  /// [key] Not supported by Cloud Run.
  /// [localObjectReference] Not supported by Cloud Run.
  /// [name] Not supported by Cloud Run.
  /// [optional] Not supported by Cloud Run.
  const ConfigMapKeySelectorResponse({
    required this.key,
    required this.localObjectReference,
    required this.name,
    required this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'localObjectReference': pulumi.Input.mapInputValue<LocalObjectReferenceResponse, Map<String, dynamic>>(localObjectReference, (value) => value.toMap()),
      'name': name,
      'optional': optional,
    };
  }

  factory ConfigMapKeySelectorResponse.fromMap(Map<String, dynamic> map) {
    return ConfigMapKeySelectorResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      localObjectReference: pulumi.Input.fromValue(LocalObjectReferenceResponse.fromMap((map['localObjectReference']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      optional: pulumi.Input.fromValue(map['optional'] as bool),
    );
  }
}

