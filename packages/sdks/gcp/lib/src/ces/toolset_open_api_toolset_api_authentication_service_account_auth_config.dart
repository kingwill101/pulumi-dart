// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig {
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

  /// Creates a new [ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig].
  /// [scopes] The OAuth scopes to grant. If not specified, the default scope
  /// [serviceAccount] The email address of the service account used for authenticatation. CES
  const ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig({
    this.scopes,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopes': ?scopes,
      'serviceAccount': serviceAccount,
    };
  }

  factory ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig(
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
    );
  }
}
