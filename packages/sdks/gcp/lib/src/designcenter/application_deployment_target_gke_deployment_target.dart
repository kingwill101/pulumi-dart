// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationDeploymentTargetGkeDeploymentTarget {
  /// The self link of the cluster where the GKE based application is
  /// deployed.
  final pulumi.Input<String> clusterSelfLink;
  /// The Kubernetes service account in the namespace, such as
  /// `default`.
  final pulumi.Input<String> kubernetesServiceAccount;
  /// Whether to create the Kubernetes service account. If `true`, the
  /// service account is created in the namespace. If `false`, the
  /// service account must already exist in the namespace.
  final pulumi.Input<bool?>? kubernetesServiceAccountCreation;
  /// The namespace where the application is deployed.
  final pulumi.Input<String> namespace;

  /// Creates a new [ApplicationDeploymentTargetGkeDeploymentTarget].
  /// [clusterSelfLink] The self link of the cluster where the GKE based application is
  /// [kubernetesServiceAccount] The Kubernetes service account in the namespace, such as
  /// [kubernetesServiceAccountCreation] Whether to create the Kubernetes service account. If `true`, the
  /// [namespace] The namespace where the application is deployed.
  const ApplicationDeploymentTargetGkeDeploymentTarget({
    required this.clusterSelfLink,
    required this.kubernetesServiceAccount,
    this.kubernetesServiceAccountCreation,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelfLink': clusterSelfLink,
      'kubernetesServiceAccount': kubernetesServiceAccount,
      'kubernetesServiceAccountCreation': ?kubernetesServiceAccountCreation,
      'namespace': namespace,
    };
  }

  factory ApplicationDeploymentTargetGkeDeploymentTarget.fromMap(Map<String, dynamic> map) {
    return ApplicationDeploymentTargetGkeDeploymentTarget(
      clusterSelfLink: pulumi.Input.fromValue(map['clusterSelfLink'] as String),
      kubernetesServiceAccount: pulumi.Input.fromValue(map['kubernetesServiceAccount'] as String),
      kubernetesServiceAccountCreation: (() { final guardedValue = map['kubernetesServiceAccountCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}
