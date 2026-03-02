// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterDefaultSnatStatus {
  /// Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled.When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic
  ///
  /// <a name="nested_cluster_telemetry"></a>The `cluster_telemetry` block supports
  final pulumi.Input<bool> disabled;

  /// Creates a new [ClusterDefaultSnatStatus].
  /// [disabled] Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when defaultSnatStatus is disabled.When disabled is set to false, default IP masquerade rules will be applied to the nodes to prevent sNAT on cluster internal traffic
  ClusterDefaultSnatStatus({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory ClusterDefaultSnatStatus.fromMap(Map<String, dynamic> map) {
    return ClusterDefaultSnatStatus(
      disabled: (map['disabled'] as bool).input(),
    );
  }
}

