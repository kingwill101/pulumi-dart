// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about a user.
class UserInfoResponse {
  /// E-mail address of the user.
  final pulumi.Input<String> email;

  /// Creates a new [UserInfoResponse].
  /// [email] E-mail address of the user.
  const UserInfoResponse({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory UserInfoResponse.fromMap(Map<String, dynamic> map) {
    return UserInfoResponse(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}

