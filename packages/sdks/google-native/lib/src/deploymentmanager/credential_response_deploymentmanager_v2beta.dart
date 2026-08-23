// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_auth_response_deploymentmanager_v2beta.dart';
import 'service_account_response_deploymentmanager_v2beta.dart';

/// The credential used by Deployment Manager and TypeProvider. Only one of the options is permitted.
class CredentialResponseDeploymentmanagerV2beta {
  /// Basic Auth Credential, only used by TypeProvider.
  final pulumi.Input<BasicAuthResponseDeploymentmanagerV2beta> basicAuth;
  /// Service Account Credential, only used by Deployment.
  final pulumi.Input<ServiceAccountResponseDeploymentmanagerV2beta> serviceAccount;
  /// Specify to use the project default credential, only supported by Deployment.
  final pulumi.Input<bool> useProjectDefault;

  /// Creates a new [CredentialResponseDeploymentmanagerV2beta].
  /// [basicAuth] Basic Auth Credential, only used by TypeProvider.
  /// [serviceAccount] Service Account Credential, only used by Deployment.
  /// [useProjectDefault] Specify to use the project default credential, only supported by Deployment.
  const CredentialResponseDeploymentmanagerV2beta({
    required this.basicAuth,
    required this.serviceAccount,
    required this.useProjectDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth': pulumi.Input.mapInputValue<BasicAuthResponseDeploymentmanagerV2beta, Map<String, dynamic>>(basicAuth, (value) => value.toMap()),
      'serviceAccount': pulumi.Input.mapInputValue<ServiceAccountResponseDeploymentmanagerV2beta, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'useProjectDefault': useProjectDefault,
    };
  }

  factory CredentialResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return CredentialResponseDeploymentmanagerV2beta(
      basicAuth: pulumi.Input.fromValue(BasicAuthResponseDeploymentmanagerV2beta.fromMap((map['basicAuth']! as Map).cast<String, dynamic>())),
      serviceAccount: pulumi.Input.fromValue(ServiceAccountResponseDeploymentmanagerV2beta.fromMap((map['serviceAccount']! as Map).cast<String, dynamic>())),
      useProjectDefault: pulumi.Input.fromValue(map['useProjectDefault'] as bool),
    );
  }
}
