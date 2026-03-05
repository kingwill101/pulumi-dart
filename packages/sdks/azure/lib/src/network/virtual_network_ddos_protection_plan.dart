// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkDdosProtectionPlan {
  /// Enable/disable DDoS Protection Plan on Virtual Network.
  final pulumi.Input<bool> enable;
  /// The ID of DDoS Protection Plan.
  final pulumi.Input<String> id;

  /// Creates a new [VirtualNetworkDdosProtectionPlan].
  /// [enable] Enable/disable DDoS Protection Plan on Virtual Network.
  /// [id] The ID of DDoS Protection Plan.
  VirtualNetworkDdosProtectionPlan({
    required this.enable,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'id': id,
    };
  }

  factory VirtualNetworkDdosProtectionPlan.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkDdosProtectionPlan(
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

