// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The credentials to authenticate a user agent with a server that is put in HTTP Authorization request header.
class GoogleCloudIntegrationsV1alphaAuthTokenResponse {
  /// The token for the auth type.
  final pulumi.Input<String> token;
  /// Authentication type, e.g. "Basic", "Bearer", etc.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudIntegrationsV1alphaAuthTokenResponse].
  /// [token] The token for the auth type.
  /// [type] Authentication type, e.g. "Basic", "Bearer", etc.
  const GoogleCloudIntegrationsV1alphaAuthTokenResponse({
    required this.token,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'type': type,
    };
  }

  factory GoogleCloudIntegrationsV1alphaAuthTokenResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaAuthTokenResponse(
      token: pulumi.Input.fromValue(map['token'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

