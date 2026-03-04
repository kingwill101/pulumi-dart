// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_auth_deploymentmanager_v2beta.dart';
import 'service_account_deploymentmanager_v2beta.dart';

/// The credential used by Deployment Manager and TypeProvider. Only one of the options is permitted.
class CredentialDeploymentmanagerV2beta {
  /// Basic Auth Credential, only used by TypeProvider.
  final pulumi.Input<BasicAuthDeploymentmanagerV2beta>? basicAuth;

  /// Service Account Credential, only used by Deployment.
  final pulumi.Input<ServiceAccountDeploymentmanagerV2beta>? serviceAccount;

  /// Specify to use the project default credential, only supported by Deployment.
  final pulumi.Input<bool>? useProjectDefault;

  /// Creates a new [CredentialDeploymentmanagerV2beta].
  /// [basicAuth] Basic Auth Credential, only used by TypeProvider.
  /// [serviceAccount] Service Account Credential, only used by Deployment.
  /// [useProjectDefault] Specify to use the project default credential, only supported by Deployment.
  CredentialDeploymentmanagerV2beta({
    this.basicAuth,
    this.serviceAccount,
    this.useProjectDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth':
          ?pulumi.Input.mapOptionalInputValue<
            BasicAuthDeploymentmanagerV2beta,
            Map<String, dynamic>
          >(basicAuth, (value) => value.toMap()),
      'serviceAccount':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceAccountDeploymentmanagerV2beta,
            Map<String, dynamic>
          >(serviceAccount, (value) => value.toMap()),
      'useProjectDefault': ?useProjectDefault,
    };
  }

  factory CredentialDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return CredentialDeploymentmanagerV2beta(
      basicAuth: (() {
        final guardedValue = map['basicAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BasicAuthDeploymentmanagerV2beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceAccountDeploymentmanagerV2beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      useProjectDefault: (() {
        final guardedValue = map['useProjectDefault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
