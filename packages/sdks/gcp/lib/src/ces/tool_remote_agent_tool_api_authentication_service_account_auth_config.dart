// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolRemoteAgentToolApiAuthenticationServiceAccountAuthConfig {
  /// (Output)
  /// The OAuth scopes to grant. If not specified, the default scope
  /// `https://www.googleapis.com/auth/cloud-platform` is used.
  final pulumi.Input<List<String>?>? scopes;
  /// (Output)
  /// The email address of the service account used for authenticatation. CES
  /// uses this service account to exchange an access token and the access token
  /// is then sent in the `Authorization` header of the request.
  /// The service account must have the
  /// `roles/iam.serviceAccountTokenCreator` role granted to the
  /// CES service agent
  /// `service-&lt;PROJECT-NUMBER&gt;@gcp-sa-ces.iam.gserviceaccount.com`.
  final pulumi.Input<String?>? serviceAccount;

  /// Creates a new [ToolRemoteAgentToolApiAuthenticationServiceAccountAuthConfig].
  /// [scopes] (Output)
  /// [serviceAccount] (Output)
  const ToolRemoteAgentToolApiAuthenticationServiceAccountAuthConfig({
    this.scopes,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopes': ?scopes,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory ToolRemoteAgentToolApiAuthenticationServiceAccountAuthConfig.fromMap(Map<String, dynamic> map) {
    return ToolRemoteAgentToolApiAuthenticationServiceAccountAuthConfig(
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
