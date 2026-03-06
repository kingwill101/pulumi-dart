// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig {
  /// Optional. Indicate the auth token type generated from the Diglogflow service agent.
  /// The generated token is sent in the Authorization header.
  /// See [ServiceAgentAuth](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#serviceagentauth) for valid values.
  final pulumi.Input<String>? serviceAgentAuth;

  /// Creates a new [CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig].
  /// [serviceAgentAuth] Optional. Indicate the auth token type generated from the Diglogflow service agent.
  const CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig({
    this.serviceAgentAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAgentAuth': ?serviceAgentAuth,
    };
  }

  factory CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig.fromMap(Map<String, dynamic> map) {
    return CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig(
      serviceAgentAuth: (() { final guardedValue = map['serviceAgentAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

