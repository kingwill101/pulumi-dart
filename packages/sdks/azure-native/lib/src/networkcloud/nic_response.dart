// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lldp_neighbor_response.dart';

class NicResponse {
  /// The information about the device connected to this NIC.
  final pulumi.Input<LldpNeighborResponse> lldpNeighbor;
  /// The MAC address associated with this NIC.
  final pulumi.Input<String> macAddress;
  /// The name of the NIC/interface.
  final pulumi.Input<String> name;

  /// Creates a new [NicResponse].
  /// [lldpNeighbor] The information about the device connected to this NIC.
  /// [macAddress] The MAC address associated with this NIC.
  /// [name] The name of the NIC/interface.
  const NicResponse({
    required this.lldpNeighbor,
    required this.macAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lldpNeighbor': pulumi.Input.mapInputValue<LldpNeighborResponse, Map<String, dynamic>>(lldpNeighbor, (value) => value.toMap()),
      'macAddress': macAddress,
      'name': name,
    };
  }

  factory NicResponse.fromMap(Map<String, dynamic> map) {
    return NicResponse(
      lldpNeighbor: pulumi.Input.fromValue(LldpNeighborResponse.fromMap((map['lldpNeighbor']! as Map).cast<String, dynamic>())),
      macAddress: pulumi.Input.fromValue(map['macAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
