// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterIpAllocationPolicyAutoIpamConfig {
  /// The flag that enables Auto IPAM on this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterIpAllocationPolicyAutoIpamConfig].
  /// [enabled] The flag that enables Auto IPAM on this cluster.
  GetClusterIpAllocationPolicyAutoIpamConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterIpAllocationPolicyAutoIpamConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterIpAllocationPolicyAutoIpamConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
