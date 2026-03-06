// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference.dart';

/// Not supported by Cloud Run. SecretEnvSource selects a Secret to populate the environment variables with. The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
class SecretEnvSource {
  /// This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  final pulumi.Input<LocalObjectReference>? localObjectReference;
  /// The Secret to select from.
  final pulumi.Input<String>? name;
  /// Specify whether the Secret must be defined
  final pulumi.Input<bool>? optional;

  /// Creates a new [SecretEnvSource].
  /// [localObjectReference] This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  /// [name] The Secret to select from.
  /// [optional] Specify whether the Secret must be defined
  const SecretEnvSource({
    this.localObjectReference,
    this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localObjectReference': ?pulumi.Input.mapOptionalInputValue<LocalObjectReference, Map<String, dynamic>>(localObjectReference, (value) => value.toMap()),
      'name': ?name,
      'optional': ?optional,
    };
  }

  factory SecretEnvSource.fromMap(Map<String, dynamic> map) {
    return SecretEnvSource(
      localObjectReference: (() { final guardedValue = map['localObjectReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LocalObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optional: (() { final guardedValue = map['optional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

