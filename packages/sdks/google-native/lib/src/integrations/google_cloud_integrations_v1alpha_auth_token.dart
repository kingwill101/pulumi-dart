// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The credentials to authenticate a user agent with a server that is put in HTTP Authorization request header.
class GoogleCloudIntegrationsV1alphaAuthToken {
  /// The token for the auth type.
  final pulumi.Input<String>? token;
  /// Authentication type, e.g. "Basic", "Bearer", etc.
  final pulumi.Input<String>? type;

  /// Creates a new [GoogleCloudIntegrationsV1alphaAuthToken].
  /// [token] The token for the auth type.
  /// [type] Authentication type, e.g. "Basic", "Bearer", etc.
  GoogleCloudIntegrationsV1alphaAuthToken({
    this.token,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': ?token,
      'type': ?type,
    };
  }

  factory GoogleCloudIntegrationsV1alphaAuthToken.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaAuthToken(
      token: map['token'] == null ? null : (map['token'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

