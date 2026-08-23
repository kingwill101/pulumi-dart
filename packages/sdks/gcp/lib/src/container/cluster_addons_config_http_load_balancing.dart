// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigHttpLoadBalancing {
  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled.When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic
  ///
  /// &lt;a name="nestedClusterTelemetry"&gt;&lt;/a&gt;The `clusterTelemetry` block supports
  final pulumi.Input<bool> disabled;

  /// Creates a new [ClusterAddonsConfigHttpLoadBalancing].
  /// [disabled] Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled.When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic
  const ClusterAddonsConfigHttpLoadBalancing({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory ClusterAddonsConfigHttpLoadBalancing.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigHttpLoadBalancing(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
