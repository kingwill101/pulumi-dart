// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig {
  /// Optional. Indicate the auth token type generated from the Diglogflow service agent.
  /// The generated token is sent in the Authorization header.
  /// See [ServiceAgentAuth](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#serviceagentauth) for valid values.
  final pulumi.Input<String>? serviceAgentAuth;

  /// Creates a new [CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig].
  /// [serviceAgentAuth] Optional. Indicate the auth token type generated from the Diglogflow service agent.
  CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig({
    this.serviceAgentAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serviceAgentAuth': ?serviceAgentAuth};
  }

  factory CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig(
      serviceAgentAuth: (() {
        final guardedValue = map['serviceAgentAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
