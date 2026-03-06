// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureClusterWorkloadIdentityConfig {
  /// The ID of the OIDC Identity Provider (IdP) associated to the Workload Identity Pool.
  final pulumi.Input<String>? identityProvider;
  /// The OIDC issuer URL for this cluster.
  final pulumi.Input<String>? issuerUri;
  /// The Workload Identity Pool associated to the cluster.
  final pulumi.Input<String>? workloadPool;

  /// Creates a new [AzureClusterWorkloadIdentityConfig].
  /// [identityProvider] The ID of the OIDC Identity Provider (IdP) associated to the Workload Identity Pool.
  /// [issuerUri] The OIDC issuer URL for this cluster.
  /// [workloadPool] The Workload Identity Pool associated to the cluster.
  const AzureClusterWorkloadIdentityConfig({
    this.identityProvider,
    this.issuerUri,
    this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProvider': ?identityProvider,
      'issuerUri': ?issuerUri,
      'workloadPool': ?workloadPool,
    };
  }

  factory AzureClusterWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return AzureClusterWorkloadIdentityConfig(
      identityProvider: (() { final guardedValue = map['identityProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuerUri: (() { final guardedValue = map['issuerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadPool: (() { final guardedValue = map['workloadPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

