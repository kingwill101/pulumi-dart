// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getUser.
class GetUserResult {
  final String authenticationDomainId;
  final String emailId;

  /// The ID of the matching user fetched.
  final String id;
  final String name;

  /// Creates a new [GetUserResult].
  /// [authenticationDomainId] Required.
  /// [emailId] Required.
  /// [id] The ID of the matching user fetched.
  /// [name] Required.
  GetUserResult({
    required this.authenticationDomainId,
    required this.emailId,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationDomainId': authenticationDomainId,
      'emailId': emailId,
      'id': id,
      'name': name,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      authenticationDomainId: map['authenticationDomainId'] as String,
      emailId: map['emailId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
