// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterDeploymentSafeguard resources.
class ClusterDeploymentSafeguardState {
  /// A list of Kubernetes namespace names that should be excluded from Deployment Safeguards enforcement. This allows certain namespaces to bypass the configured policies.
  final pulumi.Input<List<String>>? excludedNamespaces;
  /// Specifies the Kubernetes Cluster ID for which Deployment Safeguards should be configured. Changing this forces a new resource to be created.
  final pulumi.Input<String>? kubernetesClusterId;
  /// The level of Deployment Safeguards enforcement. Possible values are `Warn` and `Enforce`.
  final pulumi.Input<String>? level;
  /// The Pod Security Standards level to enforce. Possible values are `Baseline`, `Privileged`, and `Restricted`. Defaults to `Privileged`.
  final pulumi.Input<String>? podSecurityStandardsLevel;

  /// Creates a new [ClusterDeploymentSafeguardState].
  /// [excludedNamespaces] A list of Kubernetes namespace names that should be excluded from Deployment Safeguards enforcement. This allows certain namespaces to bypass the configured policies.
  /// [kubernetesClusterId] Specifies the Kubernetes Cluster ID for which Deployment Safeguards should be configured. Changing this forces a new resource to be created.
  /// [level] The level of Deployment Safeguards enforcement. Possible values are `Warn` and `Enforce`.
  /// [podSecurityStandardsLevel] The Pod Security Standards level to enforce. Possible values are `Baseline`, `Privileged`, and `Restricted`. Defaults to `Privileged`.
  const ClusterDeploymentSafeguardState({
    this.excludedNamespaces,
    this.kubernetesClusterId,
    this.level,
    this.podSecurityStandardsLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedNamespaces': ?excludedNamespaces,
      'kubernetesClusterId': ?kubernetesClusterId,
      'level': ?level,
      'podSecurityStandardsLevel': ?podSecurityStandardsLevel,
    };
  }

  factory ClusterDeploymentSafeguardState.fromMap(Map<String, dynamic> map) {
    return ClusterDeploymentSafeguardState(
      excludedNamespaces: (() { final guardedValue = map['excludedNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kubernetesClusterId: (() { final guardedValue = map['kubernetesClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podSecurityStandardsLevel: (() { final guardedValue = map['podSecurityStandardsLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
