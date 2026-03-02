// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AdministrativeCredentialsResponse {
  /// The password of the administrator of the device used during initialization.
  final pulumi.Input<String> password;
  /// The username of the administrator of the device used during initialization.
  final pulumi.Input<String> username;

  /// Creates a new [AdministrativeCredentialsResponse].
  /// [password] The password of the administrator of the device used during initialization.
  /// [username] The username of the administrator of the device used during initialization.
  AdministrativeCredentialsResponse({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory AdministrativeCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return AdministrativeCredentialsResponse(
      password: (map['password'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

