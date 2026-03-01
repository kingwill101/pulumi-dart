// ignore_for_file: unused_element, unnecessary_cast

import 'local_object_reference.dart';

/// Not supported by Cloud Run. SecretEnvSource selects a Secret to populate the environment variables with. The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
class SecretEnvSource {
  /// This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  final LocalObjectReference? localObjectReference;
  /// The Secret to select from.
  final String? name;
  /// Specify whether the Secret must be defined
  final bool? optional;

  /// Creates a new [SecretEnvSource].
  /// [localObjectReference] This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  /// [name] The Secret to select from.
  /// [optional] Specify whether the Secret must be defined
  SecretEnvSource({
    this.localObjectReference,
    this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localObjectReference': ?localObjectReference == null ? null : localObjectReference!.toMap(),
      'name': ?name,
      'optional': ?optional,
    };
  }

  factory SecretEnvSource.fromMap(Map<String, dynamic> map) {
    return SecretEnvSource(
      localObjectReference: map['localObjectReference'] == null ? null : LocalObjectReference.fromMap((map['localObjectReference'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      optional: map['optional'] == null ? null : map['optional'] as bool,
    );
  }
}

