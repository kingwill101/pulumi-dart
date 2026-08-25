// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAutopilotClusterPolicyConfig {
  /// Whether to block non autopilot managed node pools in the cluster.
  final pulumi.Input<bool?>? noStandardNodePools;
  /// Whether to block impersonation of system accounts in the cluster.
  final pulumi.Input<bool?>? noSystemImpersonation;
  /// Whether to block mutation of resources in system namespaces and non-namespaced system resources.
  final pulumi.Input<bool?>? noSystemMutation;
  /// Whether to block unsafe webhooks in the cluster.
  final pulumi.Input<bool?>? noUnsafeWebhooks;

  /// Creates a new [ClusterAutopilotClusterPolicyConfig].
  /// [noStandardNodePools] Whether to block non autopilot managed node pools in the cluster.
  /// [noSystemImpersonation] Whether to block impersonation of system accounts in the cluster.
  /// [noSystemMutation] Whether to block mutation of resources in system namespaces and non-namespaced system resources.
  /// [noUnsafeWebhooks] Whether to block unsafe webhooks in the cluster.
  const ClusterAutopilotClusterPolicyConfig({
    this.noStandardNodePools,
    this.noSystemImpersonation,
    this.noSystemMutation,
    this.noUnsafeWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noStandardNodePools': ?noStandardNodePools,
      'noSystemImpersonation': ?noSystemImpersonation,
      'noSystemMutation': ?noSystemMutation,
      'noUnsafeWebhooks': ?noUnsafeWebhooks,
    };
  }

  factory ClusterAutopilotClusterPolicyConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAutopilotClusterPolicyConfig(
      noStandardNodePools: (() { final guardedValue = map['noStandardNodePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      noSystemImpersonation: (() { final guardedValue = map['noSystemImpersonation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      noSystemMutation: (() { final guardedValue = map['noSystemMutation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      noUnsafeWebhooks: (() { final guardedValue = map['noUnsafeWebhooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
