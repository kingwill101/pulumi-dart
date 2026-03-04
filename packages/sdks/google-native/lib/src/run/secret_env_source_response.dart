// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference_response.dart';

/// Not supported by Cloud Run. SecretEnvSource selects a Secret to populate the environment variables with. The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
class SecretEnvSourceResponse {
  /// This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  final pulumi.Input<LocalObjectReferenceResponse> localObjectReference;

  /// The Secret to select from.
  final pulumi.Input<String> name;

  /// Specify whether the Secret must be defined
  final pulumi.Input<bool> optional;

  /// Creates a new [SecretEnvSourceResponse].
  /// [localObjectReference] This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  /// [name] The Secret to select from.
  /// [optional] Specify whether the Secret must be defined
  SecretEnvSourceResponse({
    required this.localObjectReference,
    required this.name,
    required this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localObjectReference':
          pulumi.Input.mapInputValue<
            LocalObjectReferenceResponse,
            Map<String, dynamic>
          >(localObjectReference, (value) => value.toMap()),
      'name': name,
      'optional': optional,
    };
  }

  factory SecretEnvSourceResponse.fromMap(Map<String, dynamic> map) {
    return SecretEnvSourceResponse(
      localObjectReference: pulumi.Input.fromValue(
        LocalObjectReferenceResponse.fromMap(
          (map['localObjectReference']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      optional: pulumi.Input.fromValue(map['optional'] as bool),
    );
  }
}
