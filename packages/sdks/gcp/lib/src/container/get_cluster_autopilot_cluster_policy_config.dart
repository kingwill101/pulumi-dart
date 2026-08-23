// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAutopilotClusterPolicyConfig {
  /// If true, prevents standard node pools and requires only autopilot node pools.
  final pulumi.Input<bool> noStandardNodePools;
  /// If true, prevents impersonation and CSRs for GKE System users.
  final pulumi.Input<bool> noSystemImpersonation;
  /// If true, prevents creation and mutation of resources in GKE managed namespaces and cluster-scoped GKE managed resources.
  final pulumi.Input<bool> noSystemMutation;
  /// If true, unsafe webhooks are not allowed.
  final pulumi.Input<bool> noUnsafeWebhooks;

  /// Creates a new [GetClusterAutopilotClusterPolicyConfig].
  /// [noStandardNodePools] If true, prevents standard node pools and requires only autopilot node pools.
  /// [noSystemImpersonation] If true, prevents impersonation and CSRs for GKE System users.
  /// [noSystemMutation] If true, prevents creation and mutation of resources in GKE managed namespaces and cluster-scoped GKE managed resources.
  /// [noUnsafeWebhooks] If true, unsafe webhooks are not allowed.
  const GetClusterAutopilotClusterPolicyConfig({
    required this.noStandardNodePools,
    required this.noSystemImpersonation,
    required this.noSystemMutation,
    required this.noUnsafeWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noStandardNodePools': noStandardNodePools,
      'noSystemImpersonation': noSystemImpersonation,
      'noSystemMutation': noSystemMutation,
      'noUnsafeWebhooks': noUnsafeWebhooks,
    };
  }

  factory GetClusterAutopilotClusterPolicyConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAutopilotClusterPolicyConfig(
      noStandardNodePools: pulumi.Input.fromValue(map['noStandardNodePools'] as bool),
      noSystemImpersonation: pulumi.Input.fromValue(map['noSystemImpersonation'] as bool),
      noSystemMutation: pulumi.Input.fromValue(map['noSystemMutation'] as bool),
      noUnsafeWebhooks: pulumi.Input.fromValue(map['noUnsafeWebhooks'] as bool),
    );
  }
}
