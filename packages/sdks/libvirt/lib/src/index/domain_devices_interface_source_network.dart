// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceNetwork {
  /// Defines the bridge device that connects the network interface to the host's network.
  final pulumi.Input<String>? bridge;
  /// Sets the name of the virtual network to which the network interface connects.
  final pulumi.Input<String>? network;
  /// Configures the port group for the network interface, categorizing it within network management frameworks.
  final pulumi.Input<String>? portGroup;
  /// Defines the identifier for the port within the network configuration, aiding in managing network traffic.
  final pulumi.Input<String>? portId;

  /// Creates a new [DomainDevicesInterfaceSourceNetwork].
  /// [bridge] Defines the bridge device that connects the network interface to the host's network.
  /// [network] Sets the name of the virtual network to which the network interface connects.
  /// [portGroup] Configures the port group for the network interface, categorizing it within network management frameworks.
  /// [portId] Defines the identifier for the port within the network configuration, aiding in managing network traffic.
  DomainDevicesInterfaceSourceNetwork({
    this.bridge,
    this.network,
    this.portGroup,
    this.portId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bridge': ?bridge,
      'network': ?network,
      'portGroup': ?portGroup,
      'portId': ?portId,
    };
  }

  factory DomainDevicesInterfaceSourceNetwork.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceNetwork(
      bridge: map['bridge'] == null ? null : (map['bridge'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      portGroup: map['portGroup'] == null ? null : (map['portGroup'] as String).input(),
      portId: map['portId'] == null ? null : (map['portId'] as String).input(),
    );
  }
}

