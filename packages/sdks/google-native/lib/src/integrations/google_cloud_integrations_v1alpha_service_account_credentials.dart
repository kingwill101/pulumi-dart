// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the service account which can be used to generate access token for authenticating the service call.
class GoogleCloudIntegrationsV1alphaServiceAccountCredentials {
  /// A space-delimited list of requested scope permissions.
  final pulumi.Input<String>? scope;
  /// Name of the service account that has the permission to make the request.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [GoogleCloudIntegrationsV1alphaServiceAccountCredentials].
  /// [scope] A space-delimited list of requested scope permissions.
  /// [serviceAccount] Name of the service account that has the permission to make the request.
  GoogleCloudIntegrationsV1alphaServiceAccountCredentials({
    this.scope,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory GoogleCloudIntegrationsV1alphaServiceAccountCredentials.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaServiceAccountCredentials(
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
    );
  }
}

