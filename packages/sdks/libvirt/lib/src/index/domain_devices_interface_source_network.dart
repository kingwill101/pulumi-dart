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
  const DomainDevicesInterfaceSourceNetwork({
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
      bridge: (() { final guardedValue = map['bridge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portGroup: (() { final guardedValue = map['portGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portId: (() { final guardedValue = map['portId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
