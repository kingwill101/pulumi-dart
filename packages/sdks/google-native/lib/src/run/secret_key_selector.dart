// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference.dart';

/// SecretKeySelector selects a key of a Secret.
class SecretKeySelector {
  /// A Cloud Secret Manager secret version. Must be 'latest' for the latest version, an integer for a specific version, or a version alias. The key of the secret to select from. Must be a valid secret key.
  final pulumi.Input<String> key;
  /// This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  final pulumi.Input<LocalObjectReference>? localObjectReference;
  /// The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project. If the secret is in another project, you must define an alias. An alias definition has the form: :projects//secrets/. If multiple alias definitions are needed, they must be separated by commas. The alias definitions must be set on the run.googleapis.com/secrets annotation. The name of the secret in the pod's namespace to select from.
  final pulumi.Input<String>? name;
  /// Specify whether the Secret or its key must be defined.
  final pulumi.Input<bool>? optional;

  /// Creates a new [SecretKeySelector].
  /// [key] A Cloud Secret Manager secret version. Must be 'latest' for the latest version, an integer for a specific version, or a version alias. The key of the secret to select from. Must be a valid secret key.
  /// [localObjectReference] This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  /// [name] The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project. If the secret is in another project, you must define an alias. An alias definition has the form: :projects//secrets/. If multiple alias definitions are needed, they must be separated by commas. The alias definitions must be set on the run.googleapis.com/secrets annotation. The name of the secret in the pod's namespace to select from.
  /// [optional] Specify whether the Secret or its key must be defined.
  const SecretKeySelector({
    required this.key,
    this.localObjectReference,
    this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'localObjectReference': ?pulumi.Input.mapOptionalInputValue<LocalObjectReference, Map<String, dynamic>>(localObjectReference, (value) => value.toMap()),
      'name': ?name,
      'optional': ?optional,
    };
  }

  factory SecretKeySelector.fromMap(Map<String, dynamic> map) {
    return SecretKeySelector(
      key: pulumi.Input.fromValue(map['key'] as String),
      localObjectReference: (() { final guardedValue = map['localObjectReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optional: (() { final guardedValue = map['optional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

