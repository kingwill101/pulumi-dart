// ignore_for_file: unused_element, unnecessary_cast


/// Describes the properties of a secret resource.
class SecretResourceProperties {
  /// The type of the content stored in the secret value. The value of this property is opaque to Service Fabric. Once set, the value of this property cannot be changed.
  final String? contentType;
  /// User readable description of the secret.
  final String? description;
  /// Describes the kind of secret.
  /// Expected value is 'SecretResourceProperties'.
  final String kind;

  /// Creates a new [SecretResourceProperties].
  /// [contentType] The type of the content stored in the secret value. The value of this property is opaque to Service Fabric. Once set, the value of this property cannot be changed.
  /// [description] User readable description of the secret.
  /// [kind] Describes the kind of secret.
  SecretResourceProperties({
    this.contentType,
    this.description,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'description': ?description,
      'kind': kind,
    };
  }

  factory SecretResourceProperties.fromMap(Map<String, dynamic> map) {
    return SecretResourceProperties(
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      kind: map['kind'] as String,
    );
  }
}

