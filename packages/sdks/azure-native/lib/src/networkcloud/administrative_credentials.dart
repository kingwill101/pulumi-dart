// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AdministrativeCredentials {
  /// The password of the administrator of the device used during initialization.
  final pulumi.Input<String> password;
  /// The username of the administrator of the device used during initialization.
  final pulumi.Input<String> username;

  /// Creates a new [AdministrativeCredentials].
  /// [password] The password of the administrator of the device used during initialization.
  /// [username] The username of the administrator of the device used during initialization.
  const AdministrativeCredentials({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory AdministrativeCredentials.fromMap(Map<String, dynamic> map) {
    return AdministrativeCredentials(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

