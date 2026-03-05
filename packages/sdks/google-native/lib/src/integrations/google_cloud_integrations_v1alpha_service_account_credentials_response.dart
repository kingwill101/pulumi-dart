// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the service account which can be used to generate access token for authenticating the service call.
class GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse {
  /// A space-delimited list of requested scope permissions.
  final pulumi.Input<String> scope;
  /// Name of the service account that has the permission to make the request.
  final pulumi.Input<String> serviceAccount;

  /// Creates a new [GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse].
  /// [scope] A space-delimited list of requested scope permissions.
  /// [serviceAccount] Name of the service account that has the permission to make the request.
  GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse({
    required this.scope,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope,
      'serviceAccount': serviceAccount,
    };
  }

  factory GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse(
      scope: pulumi.Input.fromValue(map['scope'] as String),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
    );
  }
}

