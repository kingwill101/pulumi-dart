// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthenticationDomain.
class GetAuthenticationDomainResult {
  /// The ID of the matching authentication domain fetched.
  final String id;
  final String name;

  /// Creates a new [GetAuthenticationDomainResult].
  /// [id] The ID of the matching authentication domain fetched.
  /// [name] Required.
  const GetAuthenticationDomainResult({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetAuthenticationDomainResult.fromMap(Map<String, dynamic> map) {
    return GetAuthenticationDomainResult(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

