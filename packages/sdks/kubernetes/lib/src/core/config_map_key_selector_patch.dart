// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Selects a key from a ConfigMap.
class ConfigMapKeySelectorPatch {
  /// The key to select.
  final pulumi.Input<String>? key;
  /// Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String>? name;
  /// Specify whether the ConfigMap or its key must be defined
  final pulumi.Input<bool>? optional;

  /// Creates a new [ConfigMapKeySelectorPatch].
  /// [key] The key to select.
  /// [name] Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  /// [optional] Specify whether the ConfigMap or its key must be defined
  ConfigMapKeySelectorPatch({
    this.key,
    this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'name': ?name,
      'optional': ?optional,
    };
  }

  factory ConfigMapKeySelectorPatch.fromMap(Map<String, dynamic> map) {
    return ConfigMapKeySelectorPatch(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      optional: map['optional'] == null ? null : (map['optional']! as bool).input(),
    );
  }
}

