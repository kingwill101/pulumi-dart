// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceSourceVds {
  /// Sets the connection identifier for connecting the network interface to the vDS.
  final double? connectionId;
  /// Defines the port group identifier for the vDS used by the network interface.
  final String? portGroupId;
  /// Specifies the port ID within the vDS configuration for the network interface.
  final double? portId;
  /// Configures the switch ID for the vDS associated with the network interface.
  final String switchId;

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
      connectionId: map['connectionId'] == null ? null : map['connectionId'] as double,
      portGroupId: map['portGroupId'] == null ? null : map['portGroupId'] as String,
      portId: map['portId'] == null ? null : map['portId'] as double,
      switchId: map['switchId'] as String,
    );
  }
}

