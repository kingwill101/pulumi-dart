// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
class WorkloadIdentityConfigResponseContainerV1beta1 {
  /// IAM Identity Namespace to attach all Kubernetes Service Accounts to.
  final pulumi.Input<String> identityNamespace;
  /// identity provider is the third party identity provider.
  final pulumi.Input<String> identityProvider;
  /// The workload pool to attach all Kubernetes service accounts to.
  final pulumi.Input<String> workloadPool;

  /// Creates a new [WorkloadIdentityConfigResponseContainerV1beta1].
  /// [identityNamespace] IAM Identity Namespace to attach all Kubernetes Service Accounts to.
  /// [identityProvider] identity provider is the third party identity provider.
  /// [workloadPool] The workload pool to attach all Kubernetes service accounts to.
  const WorkloadIdentityConfigResponseContainerV1beta1({
    required this.identityNamespace,
    required this.identityProvider,
    required this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityNamespace': identityNamespace,
      'identityProvider': identityProvider,
      'workloadPool': workloadPool,
    };
  }

  factory WorkloadIdentityConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityConfigResponseContainerV1beta1(
      identityNamespace: pulumi.Input.fromValue(map['identityNamespace'] as String),
      identityProvider: pulumi.Input.fromValue(map['identityProvider'] as String),
      workloadPool: pulumi.Input.fromValue(map['workloadPool'] as String),
    );
  }
}

