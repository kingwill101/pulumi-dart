// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username and password pair.
class GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse {
  /// Password to be used
  final pulumi.Input<String> password;
  /// Username to be used
  final pulumi.Input<String> username;

  /// Creates a new [GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse].
  /// [password] Password to be used
  /// [username] Username to be used
  GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse(
      password: (map['password'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

