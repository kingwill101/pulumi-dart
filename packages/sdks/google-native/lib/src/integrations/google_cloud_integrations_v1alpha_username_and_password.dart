// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username and password pair.
class GoogleCloudIntegrationsV1alphaUsernameAndPassword {
  /// Password to be used
  final pulumi.Input<String>? password;
  /// Username to be used
  final pulumi.Input<String>? username;

  /// Creates a new [GoogleCloudIntegrationsV1alphaUsernameAndPassword].
  /// [password] Password to be used
  /// [username] Username to be used
  const GoogleCloudIntegrationsV1alphaUsernameAndPassword({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory GoogleCloudIntegrationsV1alphaUsernameAndPassword.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaUsernameAndPassword(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
