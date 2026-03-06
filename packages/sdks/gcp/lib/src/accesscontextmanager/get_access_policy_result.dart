// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPolicy.
class GetAccessPolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Resource name of the AccessPolicy.
  final String name;
  final String parent;
  final List<String>? scopes;
  /// Human readable title. Does not affect behavior.
  final String title;

  /// Creates a new [GetAccessPolicyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Resource name of the AccessPolicy.
  /// [parent] Required.
  /// [scopes] Optional.
  /// [title] Human readable title. Does not affect behavior.
  const GetAccessPolicyResult({
    required this.id,
    required this.name,
    required this.parent,
    this.scopes,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'parent': parent,
      'scopes': ?scopes,
      'title': title,
    };
  }

  factory GetAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyResult(
      id: map['id'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      title: map['title'] as String,
    );
  }
}

