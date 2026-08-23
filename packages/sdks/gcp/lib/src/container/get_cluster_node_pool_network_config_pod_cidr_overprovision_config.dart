// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig {
  final pulumi.Input<bool> disabled;

  /// Creates a new [GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig].
  /// [disabled] Required.
  const GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNetworkConfigPodCidrOverprovisionConfig(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
