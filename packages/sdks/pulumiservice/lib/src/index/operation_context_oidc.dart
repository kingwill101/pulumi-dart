// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'awsoidcconfiguration.dart';
import 'azure_oidcconfiguration.dart';
import 'gcpoidcconfiguration.dart';

/// Deployments OIDC configuration for obtaining cloud credentials during a deployment.
///
/// Pulumi ESC is the recommended way to supply cloud credentials to Pulumi Deployments. Deployments OIDC predates Pulumi ESC and still works, but for most users ESC is the better choice. Deployments OIDC is still a good fit when:
///
/// - A customer-managed runner can't reach Pulumi Cloud over the network to use ESC.
/// - Pre-run commands need credentials. An ESC environment applies only to the Pulumi operation itself, unless the command is wrapped in `pulumi env run`.
///
/// See [Supplying Cloud Credentials to Pulumi Deployments](https://www.pulumi.com/docs/deployments/guides/cloud-credentials/).
class OperationContextOIDC {
  /// AWS-specific OIDC configuration.
  final pulumi.Input<AWSOIDCConfiguration?>? aws;
  /// Azure-specific OIDC configuration.
  final pulumi.Input<AzureOIDCConfiguration?>? azure;
  /// GCP-specific OIDC configuration.
  final pulumi.Input<GCPOIDCConfiguration?>? gcp;

  /// Creates a new [OperationContextOIDC].
  /// [aws] AWS-specific OIDC configuration.
  /// [azure] Azure-specific OIDC configuration.
  /// [gcp] GCP-specific OIDC configuration.
  const OperationContextOIDC({
    this.aws,
    this.azure,
    this.gcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aws': ?pulumi.Input.mapOptionalInputValue<AWSOIDCConfiguration, Map<String, dynamic>>(aws, (value) => value.toMap()),
      'azure': ?pulumi.Input.mapOptionalInputValue<AzureOIDCConfiguration, Map<String, dynamic>>(azure, (value) => value.toMap()),
      'gcp': ?pulumi.Input.mapOptionalInputValue<GCPOIDCConfiguration, Map<String, dynamic>>(gcp, (value) => value.toMap()),
    };
  }

  factory OperationContextOIDC.fromMap(Map<String, dynamic> map) {
    return OperationContextOIDC(
      aws: (() { final guardedValue = map['aws']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AWSOIDCConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azure: (() { final guardedValue = map['azure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureOIDCConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcp: (() { final guardedValue = map['gcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GCPOIDCConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
