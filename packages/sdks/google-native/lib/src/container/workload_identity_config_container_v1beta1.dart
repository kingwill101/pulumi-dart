// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
class WorkloadIdentityConfigContainerV1beta1 {
  /// IAM Identity Namespace to attach all Kubernetes Service Accounts to.
  final pulumi.Input<String>? identityNamespace;
  /// identity provider is the third party identity provider.
  final pulumi.Input<String>? identityProvider;
  /// The workload pool to attach all Kubernetes service accounts to.
  final pulumi.Input<String>? workloadPool;

  /// Creates a new [WorkloadIdentityConfigContainerV1beta1].
  /// [identityNamespace] IAM Identity Namespace to attach all Kubernetes Service Accounts to.
  /// [identityProvider] identity provider is the third party identity provider.
  /// [workloadPool] The workload pool to attach all Kubernetes service accounts to.
  WorkloadIdentityConfigContainerV1beta1({
    this.identityNamespace,
    this.identityProvider,
    this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityNamespace': ?identityNamespace,
      'identityProvider': ?identityProvider,
      'workloadPool': ?workloadPool,
    };
  }

  factory WorkloadIdentityConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityConfigContainerV1beta1(
      identityNamespace: map['identityNamespace'] == null ? null : (map['identityNamespace'] as String).input(),
      identityProvider: map['identityProvider'] == null ? null : (map['identityProvider'] as String).input(),
      workloadPool: map['workloadPool'] == null ? null : (map['workloadPool'] as String).input(),
    );
  }
}

