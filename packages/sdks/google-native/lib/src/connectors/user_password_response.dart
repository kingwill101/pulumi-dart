// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_response.dart';

/// Parameters to support Username and Password Authentication.
class UserPasswordResponse {
  /// Secret version reference containing the password.
  final pulumi.Input<SecretResponse> password;
  /// Username.
  final pulumi.Input<String> username;

  /// Creates a new [UserPasswordResponse].
  /// [password] Secret version reference containing the password.
  /// [username] Username.
  UserPasswordResponse({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': pulumi.Input.mapInputValue<SecretResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'username': username,
    };
  }

  factory UserPasswordResponse.fromMap(Map<String, dynamic> map) {
    return UserPasswordResponse(
      password: pulumi.Input.fromValue(SecretResponse.fromMap((map['password']! as Map).cast<String, dynamic>())),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

