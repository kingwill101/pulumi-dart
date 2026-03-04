// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolOpenApiSpecAuthenticationBearerTokenConfig {
  /// Optional. The name of the SecretManager secret version resource storing the Bearer token. If this field is set, the `token` field will be ignored.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}
  final pulumi.Input<String>? secretVersionForToken;

  /// Optional. The text token appended to the text Bearer to the request Authorization header.
  /// [Session parameters reference](https://cloud.google.com/dialogflow/cx/docs/concept/parameter#session-ref) can be used to pass the token dynamically, e.g. `$session.params.parameter-id`.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? token;

  /// Creates a new [CxToolOpenApiSpecAuthenticationBearerTokenConfig].
  /// [secretVersionForToken] Optional. The name of the SecretManager secret version resource storing the Bearer token. If this field is set, the `token` field will be ignored.
  /// [token] Optional. The text token appended to the text Bearer to the request Authorization header.
  CxToolOpenApiSpecAuthenticationBearerTokenConfig({
    this.secretVersionForToken,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersionForToken': ?secretVersionForToken,
      'token': ?token,
    };
  }

  factory CxToolOpenApiSpecAuthenticationBearerTokenConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolOpenApiSpecAuthenticationBearerTokenConfig(
      secretVersionForToken: (() {
        final guardedValue = map['secretVersionForToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      token: (() {
        final guardedValue = map['token'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
