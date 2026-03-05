// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterIpAllocationPolicyPodCidrOverprovisionConfig {
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetClusterIpAllocationPolicyPodCidrOverprovisionConfig].
  /// [disabled] Required.
  GetClusterIpAllocationPolicyPodCidrOverprovisionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetClusterIpAllocationPolicyPodCidrOverprovisionConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterIpAllocationPolicyPodCidrOverprovisionConfig(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}

