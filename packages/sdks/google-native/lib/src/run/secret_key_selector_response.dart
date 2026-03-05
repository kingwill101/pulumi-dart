// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference_response.dart';

/// SecretKeySelector selects a key of a Secret.
class SecretKeySelectorResponse {
  /// A Cloud Secret Manager secret version. Must be 'latest' for the latest version, an integer for a specific version, or a version alias. The key of the secret to select from. Must be a valid secret key.
  final pulumi.Input<String> key;
  /// This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  final pulumi.Input<LocalObjectReferenceResponse> localObjectReference;
  /// The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project. If the secret is in another project, you must define an alias. An alias definition has the form: :projects//secrets/. If multiple alias definitions are needed, they must be separated by commas. The alias definitions must be set on the run.googleapis.com/secrets annotation. The name of the secret in the pod's namespace to select from.
  final pulumi.Input<String> name;
  /// Specify whether the Secret or its key must be defined.
  final pulumi.Input<bool> optional;

  /// Creates a new [SecretKeySelectorResponse].
  /// [key] A Cloud Secret Manager secret version. Must be 'latest' for the latest version, an integer for a specific version, or a version alias. The key of the secret to select from. Must be a valid secret key.
  /// [localObjectReference] This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  /// [name] The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project. If the secret is in another project, you must define an alias. An alias definition has the form: :projects//secrets/. If multiple alias definitions are needed, they must be separated by commas. The alias definitions must be set on the run.googleapis.com/secrets annotation. The name of the secret in the pod's namespace to select from.
  /// [optional] Specify whether the Secret or its key must be defined.
  SecretKeySelectorResponse({
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

  factory SecretKeySelectorResponse.fromMap(Map<String, dynamic> map) {
    return SecretKeySelectorResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      localObjectReference: pulumi.Input.fromValue(LocalObjectReferenceResponse.fromMap((map['localObjectReference']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      optional: pulumi.Input.fromValue(map['optional'] as bool),
    );
  }
}

