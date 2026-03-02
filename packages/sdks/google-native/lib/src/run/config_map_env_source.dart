// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_object_reference.dart';

/// Not supported by Cloud Run. ConfigMapEnvSource selects a ConfigMap to populate the environment variables with. The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
class ConfigMapEnvSource {
  /// This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  final pulumi.Input<LocalObjectReference>? localObjectReference;
  /// The ConfigMap to select from.
  final pulumi.Input<String>? name;
  /// Specify whether the ConfigMap must be defined.
  final pulumi.Input<bool>? optional;

  /// Creates a new [ConfigMapEnvSource].
  /// [localObjectReference] This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  /// [name] The ConfigMap to select from.
  /// [optional] Specify whether the ConfigMap must be defined.
  ConfigMapEnvSource({
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

  factory ConfigMapEnvSource.fromMap(Map<String, dynamic> map) {
    return ConfigMapEnvSource(
      localObjectReference: map['localObjectReference'] == null ? null : (LocalObjectReference.fromMap((map['localObjectReference']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      optional: map['optional'] == null ? null : (map['optional']! as bool).input(),
    );
  }
}

