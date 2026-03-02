// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterWorkloadIdentityConfig {
  /// The ID of the OIDC Identity Provider (IdP) associated to the Workload Identity Pool.
  final pulumi.Input<String>? identityProvider;
  /// The OIDC issuer URL for this cluster.
  final pulumi.Input<String>? issuerUri;
  /// The Workload Identity Pool associated to the cluster.
  final pulumi.Input<String>? workloadPool;

  /// Creates a new [AwsClusterWorkloadIdentityConfig].
  /// [identityProvider] The ID of the OIDC Identity Provider (IdP) associated to the Workload Identity Pool.
  /// [issuerUri] The OIDC issuer URL for this cluster.
  /// [workloadPool] The Workload Identity Pool associated to the cluster.
  AwsClusterWorkloadIdentityConfig({
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

  factory AwsClusterWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return AwsClusterWorkloadIdentityConfig(
      identityProvider: map['identityProvider'] == null ? null : (map['identityProvider']! as String).input(),
      issuerUri: map['issuerUri'] == null ? null : (map['issuerUri']! as String).input(),
      workloadPool: map['workloadPool'] == null ? null : (map['workloadPool']! as String).input(),
    );
  }
}

