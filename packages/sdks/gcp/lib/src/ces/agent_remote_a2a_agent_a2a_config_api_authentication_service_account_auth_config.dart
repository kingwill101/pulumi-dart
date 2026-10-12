// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentRemoteA2aAgentA2aConfigApiAuthenticationServiceAccountAuthConfig {
  /// The OAuth scopes to grant. If not specified, the default scope
  /// `https://www.googleapis.com/auth/cloud-platform` is used.
  final pulumi.Input<List<String>?>? scopes;
  /// The email address of the service account used for authenticatation. CES
  /// uses this service account to exchange an access token and the access token
  /// is then sent in the `Authorization` header of the request.
  /// The service account must have the
  /// `roles/iam.serviceAccountTokenCreator` role granted to the
  /// CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final pulumi.Input<String> serviceAccount;

  /// Creates a new [AgentRemoteA2aAgentA2aConfigApiAuthenticationServiceAccountAuthConfig].
  /// [scopes] The OAuth scopes to grant. If not specified, the default scope
  /// [serviceAccount] The email address of the service account used for authenticatation. CES
  const AgentRemoteA2aAgentA2aConfigApiAuthenticationServiceAccountAuthConfig({
    this.scopes,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopes': ?scopes,
      'serviceAccount': serviceAccount,
    };
  }

  factory AgentRemoteA2aAgentA2aConfigApiAuthenticationServiceAccountAuthConfig.fromMap(Map<String, dynamic> map) {
    return AgentRemoteA2aAgentA2aConfigApiAuthenticationServiceAccountAuthConfig(
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
    );
  }
}
