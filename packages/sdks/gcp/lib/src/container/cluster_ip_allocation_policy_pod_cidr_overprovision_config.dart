// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterIpAllocationPolicyPodCidrOverprovisionConfig {
  /// Whether Pod CIDR overprovisioning is disabled.
  ///
  /// &lt;a name="nestedAutoIpamConfig"&gt;&lt;/a&gt;The auto ipam config supports:
  final pulumi.Input<bool> disabled;

  /// Creates a new [ClusterIpAllocationPolicyPodCidrOverprovisionConfig].
  /// [disabled] Whether Pod CIDR overprovisioning is disabled.
  const ClusterIpAllocationPolicyPodCidrOverprovisionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory ClusterIpAllocationPolicyPodCidrOverprovisionConfig.fromMap(Map<String, dynamic> map) {
    return ClusterIpAllocationPolicyPodCidrOverprovisionConfig(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
