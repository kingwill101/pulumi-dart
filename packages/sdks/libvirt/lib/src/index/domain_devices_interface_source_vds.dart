// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceVds {
  /// Sets the connection identifier for connecting the network interface to the vDS.
  final pulumi.Input<double>? connectionId;
  /// Defines the port group identifier for the vDS used by the network interface.
  final pulumi.Input<String>? portGroupId;
  /// Specifies the port ID within the vDS configuration for the network interface.
  final pulumi.Input<double>? portId;
  /// Configures the switch ID for the vDS associated with the network interface.
  final pulumi.Input<String> switchId;

  /// Creates a new [DomainDevicesInterfaceSourceVds].
  /// [connectionId] Sets the connection identifier for connecting the network interface to the vDS.
  /// [portGroupId] Defines the port group identifier for the vDS used by the network interface.
  /// [portId] Specifies the port ID within the vDS configuration for the network interface.
  /// [switchId] Configures the switch ID for the vDS associated with the network interface.
  DomainDevicesInterfaceSourceVds({
    this.connectionId,
    this.portGroupId,
    this.portId,
    required this.switchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'portGroupId': ?portGroupId,
      'portId': ?portId,
      'switchId': switchId,
    };
  }

  factory DomainDevicesInterfaceSourceVds.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVds(
      connectionId: (() { final guardedValue = map['connectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      portGroupId: (() { final guardedValue = map['portGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portId: (() { final guardedValue = map['portId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      switchId: pulumi.Input.fromValue(map['switchId'] as String),
    );
  }
}

