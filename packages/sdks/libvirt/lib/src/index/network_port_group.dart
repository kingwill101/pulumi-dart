// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_port_group_virtual_port.dart';
import 'network_port_group_vlan.dart';

class NetworkPortGroup {
  /// Indicates the default status of the port group.
  final pulumi.Input<String>? default_;
  /// Sets the name for the specified port group within the network.
  final pulumi.Input<String>? name;
  /// Controls whether to trust incoming packets based on guest-defined filters.
  final pulumi.Input<String>? trustGuestRxFilters;
  /// Configures the virtual port associated with a port group.
  final pulumi.Input<NetworkPortGroupVirtualPort>? virtualPort;
  /// Defines VLAN settings for the port group in the network configuration.
  final pulumi.Input<NetworkPortGroupVlan>? vlan;

  /// Creates a new [NetworkPortGroup].
  /// [default_] Indicates the default status of the port group.
  /// [name] Sets the name for the specified port group within the network.
  /// [trustGuestRxFilters] Controls whether to trust incoming packets based on guest-defined filters.
  /// [virtualPort] Configures the virtual port associated with a port group.
  /// [vlan] Defines VLAN settings for the port group in the network configuration.
  NetworkPortGroup({
    this.default_,
    this.name,
    this.trustGuestRxFilters,
    this.virtualPort,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'name': ?name,
      'trustGuestRxFilters': ?trustGuestRxFilters,
      'virtualPort': ?pulumi.Input.mapOptionalInputValue<NetworkPortGroupVirtualPort, Map<String, dynamic>>(virtualPort, (value) => value.toMap()),
      'vlan': ?pulumi.Input.mapOptionalInputValue<NetworkPortGroupVlan, Map<String, dynamic>>(vlan, (value) => value.toMap()),
    };
  }

  factory NetworkPortGroup.fromMap(Map<String, dynamic> map) {
    return NetworkPortGroup(
      default_: map['default'] == null ? null : (map['default'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      trustGuestRxFilters: map['trustGuestRxFilters'] == null ? null : (map['trustGuestRxFilters'] as String).input(),
      virtualPort: map['virtualPort'] == null ? null : (NetworkPortGroupVirtualPort.fromMap((map['virtualPort'] as Map).cast<String, dynamic>())).input(),
      vlan: map['vlan'] == null ? null : (NetworkPortGroupVlan.fromMap((map['vlan'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

