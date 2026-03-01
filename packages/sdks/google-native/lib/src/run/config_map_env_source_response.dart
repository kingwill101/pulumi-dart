// ignore_for_file: unused_element, unnecessary_cast

import 'local_object_reference_response.dart';

/// Not supported by Cloud Run. ConfigMapEnvSource selects a ConfigMap to populate the environment variables with. The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
class ConfigMapEnvSourceResponse {
  /// This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  final LocalObjectReferenceResponse localObjectReference;
  /// The ConfigMap to select from.
  final String name;
  /// Specify whether the ConfigMap must be defined.
  final bool optional;

  /// Creates a new [ConfigMapEnvSourceResponse].
  /// [localObjectReference] This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  /// [name] The ConfigMap to select from.
  /// [optional] Specify whether the ConfigMap must be defined.
  ConfigMapEnvSourceResponse({
    required this.localObjectReference,
    required this.name,
    required this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localObjectReference': localObjectReference.toMap(),
      'name': name,
      'optional': optional,
    };
  }

  factory ConfigMapEnvSourceResponse.fromMap(Map<String, dynamic> map) {
    return ConfigMapEnvSourceResponse(
      localObjectReference: LocalObjectReferenceResponse.fromMap((map['localObjectReference'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      optional: map['optional'] as bool,
    );
  }
}

