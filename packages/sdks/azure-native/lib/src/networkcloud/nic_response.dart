// ignore_for_file: unused_element, unnecessary_cast

import 'lldp_neighbor_response.dart';

class NicResponse {
  /// The information about the device connected to this NIC.
  final LldpNeighborResponse lldpNeighbor;
  /// The MAC address associated with this NIC.
  final String macAddress;
  /// The name of the NIC/interface.
  final String name;

  /// Creates a new [NicResponse].
  /// [lldpNeighbor] The information about the device connected to this NIC.
  /// [macAddress] The MAC address associated with this NIC.
  /// [name] The name of the NIC/interface.
  NicResponse({
    required this.lldpNeighbor,
    required this.macAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lldpNeighbor': lldpNeighbor.toMap(),
      'macAddress': macAddress,
      'name': name,
    };
  }

  factory NicResponse.fromMap(Map<String, dynamic> map) {
    return NicResponse(
      lldpNeighbor: LldpNeighborResponse.fromMap((map['lldpNeighbor'] as Map).cast<String, dynamic>()),
      macAddress: map['macAddress'] as String,
      name: map['name'] as String,
    );
  }
}

