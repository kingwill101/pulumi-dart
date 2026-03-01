// ignore_for_file: unused_element, unnecessary_cast


/// ServiceAccountSubject holds detailed information for service-account-kind subject.
class ServiceAccountSubjectPatch {
  /// `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
  final String? name;
  /// `namespace` is the namespace of matching ServiceAccount objects. Required.
  final String? namespace;

  /// Creates a new [ServiceAccountSubjectPatch].
  /// [name] `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
  /// [namespace] `namespace` is the namespace of matching ServiceAccount objects. Required.
  ServiceAccountSubjectPatch({
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory ServiceAccountSubjectPatch.fromMap(Map<String, dynamic> map) {
    return ServiceAccountSubjectPatch(
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

