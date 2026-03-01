// ignore_for_file: unused_element, unnecessary_cast


/// SecretEnvSource selects a Secret to populate the environment variables with.
///
/// The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
class SecretEnvSourcePatch {
  /// Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final String? name;
  /// Specify whether the Secret must be defined
  final bool? optional;

  /// Creates a new [SecretEnvSourcePatch].
  /// [name] Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  /// [optional] Specify whether the Secret must be defined
  SecretEnvSourcePatch({
    this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'optional': ?optional,
    };
  }

  factory SecretEnvSourcePatch.fromMap(Map<String, dynamic> map) {
    return SecretEnvSourcePatch(
      name: map['name'] == null ? null : map['name'] as String,
      optional: map['optional'] == null ? null : map['optional'] as bool,
    );
  }
}

