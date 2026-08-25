// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterNodeConfig {
  /// The maximum number of pods a node can run. The size of the CIDR range
  /// assigned to the node will be derived from this parameter.
  final pulumi.Input<int?>? maxPodsPerNode;

  /// Creates a new [BareMetalAdminClusterNodeConfig].
  /// [maxPodsPerNode] The maximum number of pods a node can run. The size of the CIDR range
  const BareMetalAdminClusterNodeConfig({
    this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': ?maxPodsPerNode,
    };
  }

  factory BareMetalAdminClusterNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterNodeConfig(
      maxPodsPerNode: (() { final guardedValue = map['maxPodsPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
