// ignore_for_file: unused_element, unnecessary_cast


/// ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
///
/// The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
class ConfigMapEnvSourcePatch {
  /// Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final String? name;
  /// Specify whether the ConfigMap must be defined
  final bool? optional;

  /// Creates a new [ConfigMapEnvSourcePatch].
  /// [name] Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  /// [optional] Specify whether the ConfigMap must be defined
  ConfigMapEnvSourcePatch({
    this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'optional': ?optional,
    };
  }

  factory ConfigMapEnvSourcePatch.fromMap(Map<String, dynamic> map) {
    return ConfigMapEnvSourcePatch(
      name: map['name'] == null ? null : map['name'] as String,
      optional: map['optional'] == null ? null : map['optional'] as bool,
    );
  }
}

