// ignore_for_file: unused_element, unnecessary_cast


/// NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
class NonResourceAttributesPatch {
  /// Path is the URL path of the request
  final String? path;
  /// Verb is the standard HTTP verb
  final String? verb;

  /// Creates a new [NonResourceAttributesPatch].
  /// [path] Path is the URL path of the request
  /// [verb] Verb is the standard HTTP verb
  NonResourceAttributesPatch({
    this.path,
    this.verb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'verb': ?verb,
    };
  }

  factory NonResourceAttributesPatch.fromMap(Map<String, dynamic> map) {
    return NonResourceAttributesPatch(
      path: map['path'] == null ? null : map['path'] as String,
      verb: map['verb'] == null ? null : map['verb'] as String,
    );
  }
}

