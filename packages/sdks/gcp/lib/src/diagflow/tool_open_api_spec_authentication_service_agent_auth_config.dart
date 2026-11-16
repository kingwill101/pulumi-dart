// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolOpenApiSpecAuthenticationServiceAgentAuthConfig {
  /// Optional. Indicate the auth token type generated from the Dialogflow service agent.
  /// The generated token is sent in the Authorization header.
  /// Possible values are: `ID_TOKEN`, `ACCESS_TOKEN`.
  final pulumi.Input<String?>? serviceAgentAuth;

  /// Creates a new [ToolOpenApiSpecAuthenticationServiceAgentAuthConfig].
  /// [serviceAgentAuth] Optional. Indicate the auth token type generated from the Dialogflow service agent.
  const ToolOpenApiSpecAuthenticationServiceAgentAuthConfig({
    this.serviceAgentAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAgentAuth': ?serviceAgentAuth,
    };
  }

  factory ToolOpenApiSpecAuthenticationServiceAgentAuthConfig.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiSpecAuthenticationServiceAgentAuthConfig(
      serviceAgentAuth: (() { final guardedValue = map['serviceAgentAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
