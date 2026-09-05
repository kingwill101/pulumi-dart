// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomaticClusterHostedSystem {
  /// The ID of the Subnet where the user nodes are hosted. Is required for bring your own networking
  final pulumi.Input<String> nodeSubnetId;
  /// The ID of the Subnet where the system nodes are hosted. Changing this forces a new resource to be created. Is required for bring your own networking
  final pulumi.Input<String> systemNodeSubnetId;

  /// Creates a new [AutomaticClusterHostedSystem].
  /// [nodeSubnetId] The ID of the Subnet where the user nodes are hosted. Is required for bring your own networking
  /// [systemNodeSubnetId] The ID of the Subnet where the system nodes are hosted. Changing this forces a new resource to be created. Is required for bring your own networking
  const AutomaticClusterHostedSystem({
    required this.nodeSubnetId,
    required this.systemNodeSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeSubnetId': nodeSubnetId,
      'systemNodeSubnetId': systemNodeSubnetId,
    };
  }

  factory AutomaticClusterHostedSystem.fromMap(Map<String, dynamic> map) {
    return AutomaticClusterHostedSystem(
      nodeSubnetId: pulumi.Input.fromValue(map['nodeSubnetId'] as String),
      systemNodeSubnetId: pulumi.Input.fromValue(map['systemNodeSubnetId'] as String),
    );
  }
}
