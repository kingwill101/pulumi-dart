// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPolicy.
class GetAccessPolicyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Resource name of the AccessPolicy.
  final String? name;
  final String? parent;
  final List<String>? scopes;
  /// Human readable title. Does not affect behavior.
  final String? title;

  /// Creates a new [GetAccessPolicyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Resource name of the AccessPolicy.
  /// [parent] Optional.
  /// [scopes] Optional.
  /// [title] Human readable title. Does not affect behavior.
  const GetAccessPolicyResult({
    this.id,
    this.name,
    this.parent,
    this.scopes,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'parent': ?parent,
      'scopes': ?scopes,
      'title': ?title,
    };
  }

  factory GetAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
