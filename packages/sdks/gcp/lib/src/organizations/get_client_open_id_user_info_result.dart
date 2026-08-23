// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClientOpenIdUserInfo.
class GetClientOpenIdUserInfoResult {
  /// The email of the account used by the provider to authenticate with GCP.
  final String email;
  final String id;

  /// Creates a new [GetClientOpenIdUserInfoResult].
  /// [email] The email of the account used by the provider to authenticate with GCP.
  /// [id] Required.
  const GetClientOpenIdUserInfoResult({
    required this.email,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'id': id,
    };
  }

  factory GetClientOpenIdUserInfoResult.fromMap(Map<String, dynamic> map) {
    return GetClientOpenIdUserInfoResult(
      email: map['email'] as String,
      id: map['id'] as String,
    );
  }
}
