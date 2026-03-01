// ignore_for_file: unused_element, unnecessary_cast


/// User information that made some action
class UserInfoResponse {
  /// The email of the user.
  final String email;
  /// The name of the user.
  final String name;
  /// The object id of the user.
  final String? objectId;

  /// Creates a new [UserInfoResponse].
  /// [email] The email of the user.
  /// [name] The name of the user.
  /// [objectId] The object id of the user.
  UserInfoResponse({
    required this.email,
    required this.name,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'objectId': ?objectId,
    };
  }

  factory UserInfoResponse.fromMap(Map<String, dynamic> map) {
    return UserInfoResponse(
      email: map['email'] as String,
      name: map['name'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
    );
  }
}

