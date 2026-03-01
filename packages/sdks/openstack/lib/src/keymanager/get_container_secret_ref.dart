// ignore_for_file: unused_element, unnecessary_cast


class GetContainerSecretRef {
  /// The Container name.
  final String? name;
  /// The secret reference / where to find the secret, URL.
  final String? secretRef;

  /// Creates a new [GetContainerSecretRef].
  /// [name] The Container name.
  /// [secretRef] The secret reference / where to find the secret, URL.
  GetContainerSecretRef({
    this.name,
    this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secretRef': ?secretRef,
    };
  }

  factory GetContainerSecretRef.fromMap(Map<String, dynamic> map) {
    return GetContainerSecretRef(
      name: map['name'] == null ? null : map['name'] as String,
      secretRef: map['secretRef'] == null ? null : map['secretRef'] as String,
    );
  }
}

