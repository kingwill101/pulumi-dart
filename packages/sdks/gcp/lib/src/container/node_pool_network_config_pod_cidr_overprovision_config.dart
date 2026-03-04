// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNetworkConfigPodCidrOverprovisionConfig {
  /// Whether pod cidr overprovision is disabled.
  final pulumi.Input<bool> disabled;

  /// Creates a new [NodePoolNetworkConfigPodCidrOverprovisionConfig].
  /// [disabled] Whether pod cidr overprovision is disabled.
  NodePoolNetworkConfigPodCidrOverprovisionConfig({required this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': disabled};
  }

  factory NodePoolNetworkConfigPodCidrOverprovisionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNetworkConfigPodCidrOverprovisionConfig(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}
