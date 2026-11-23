// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentRemoteA2aAgentA2aConfigApiAuthenticationBearerTokenConfig {
  /// The bearer token.
  /// Must be in the format `$context.variables.&lt;name_of_variable&gt;`.
  final pulumi.Input<String> token;

  /// Creates a new [AgentRemoteA2aAgentA2aConfigApiAuthenticationBearerTokenConfig].
  /// [token] The bearer token.
  const AgentRemoteA2aAgentA2aConfigApiAuthenticationBearerTokenConfig({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory AgentRemoteA2aAgentA2aConfigApiAuthenticationBearerTokenConfig.fromMap(Map<String, dynamic> map) {
    return AgentRemoteA2aAgentA2aConfigApiAuthenticationBearerTokenConfig(
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}
