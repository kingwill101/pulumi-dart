// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigHorizontalPodAutoscaling {
  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled.When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic
  ///
  /// &lt;a name="nested_cluster_telemetry"&gt;&lt;/a&gt;The `cluster_telemetry` block supports
  final pulumi.Input<bool> disabled;

  /// Creates a new [ClusterAddonsConfigHorizontalPodAutoscaling].
  /// [disabled] Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled.When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic
  const ClusterAddonsConfigHorizontalPodAutoscaling({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory ClusterAddonsConfigHorizontalPodAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigHorizontalPodAutoscaling(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}

