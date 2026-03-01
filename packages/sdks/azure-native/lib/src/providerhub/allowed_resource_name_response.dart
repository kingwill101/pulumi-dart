// ignore_for_file: unused_element, unnecessary_cast


class AllowedResourceNameResponse {
  /// Get action verb.
  final String? getActionVerb;
  /// Resource name.
  final String? name;

  /// Creates a new [AllowedResourceNameResponse].
  /// [getActionVerb] Get action verb.
  /// [name] Resource name.
  AllowedResourceNameResponse({
    this.getActionVerb,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'getActionVerb': ?getActionVerb,
      'name': ?name,
    };
  }

  factory AllowedResourceNameResponse.fromMap(Map<String, dynamic> map) {
    return AllowedResourceNameResponse(
      getActionVerb: map['getActionVerb'] == null ? null : map['getActionVerb'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

