// ignore_for_file: unused_element, unnecessary_cast


/// SecretKeySelector selects a key of a Secret.
class SecretKeySelector {
  /// The key of the secret to select from.  Must be a valid secret key.
  final String key;
  /// Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final String? name;
  /// Specify whether the Secret or its key must be defined
  final bool? optional;

  /// Creates a new [SecretKeySelector].
  /// [key] The key of the secret to select from.  Must be a valid secret key.
  /// [name] Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  /// [optional] Specify whether the Secret or its key must be defined
  SecretKeySelector({
    required this.key,
    this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': ?name,
      'optional': ?optional,
    };
  }

  factory SecretKeySelector.fromMap(Map<String, dynamic> map) {
    return SecretKeySelector(
      key: map['key'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      optional: map['optional'] == null ? null : map['optional'] as bool,
    );
  }
}

