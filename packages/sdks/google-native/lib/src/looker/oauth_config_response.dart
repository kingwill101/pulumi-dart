// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Looker instance OAuth login settings.
class OAuthConfigResponse {
  /// Input only. Client ID from an external OAuth application. This is an input-only field, and thus will not be set in any responses.
  final pulumi.Input<String> clientId;
  /// Input only. Client secret from an external OAuth application. This is an input-only field, and thus will not be set in any responses.
  final pulumi.Input<String> clientSecret;

  /// Creates a new [OAuthConfigResponse].
  /// [clientId] Input only. Client ID from an external OAuth application. This is an input-only field, and thus will not be set in any responses.
  /// [clientSecret] Input only. Client secret from an external OAuth application. This is an input-only field, and thus will not be set in any responses.
  const OAuthConfigResponse({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory OAuthConfigResponse.fromMap(Map<String, dynamic> map) {
    return OAuthConfigResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
    );
  }
}
