// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig {
  /// The email address of the service account used for authenticatation. CES
  /// uses this service account to exchange an access token and the access token
  /// is then sent in the `Authorization` header of the request.
  /// The service account must have the
  /// `roles/iam.serviceAccountTokenCreator` role granted to the
  /// CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final pulumi.Input<String> serviceAccount;

  /// Creates a new [ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig].
  /// [serviceAccount] The email address of the service account used for authenticatation. CES
  ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': serviceAccount,
    };
  }

  factory ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig(
      serviceAccount: (map['serviceAccount'] as String).input(),
    );
  }
}

