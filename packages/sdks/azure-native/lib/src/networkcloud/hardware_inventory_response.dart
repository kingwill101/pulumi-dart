// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hardware_inventory_network_interface_response.dart';
import 'nic_response.dart';

class HardwareInventoryResponse {
  /// Freeform data extracted from the environment about this machine. This information varies depending on the specific hardware and configuration.
  final pulumi.Input<String> additionalHostInformation;
  /// The list of network interfaces and associated details for the bare metal machine.
  final pulumi.Input<List<HardwareInventoryNetworkInterfaceResponse>> interfaces;
  /// Field Deprecated. Will be removed in an upcoming version. The list of network interface cards and associated details for the bare metal machine.
  final pulumi.Input<List<NicResponse>> nics;

  /// Creates a new [HardwareInventoryResponse].
  /// [additionalHostInformation] Freeform data extracted from the environment about this machine. This information varies depending on the specific hardware and configuration.
  /// [interfaces] The list of network interfaces and associated details for the bare metal machine.
  /// [nics] Field Deprecated. Will be removed in an upcoming version. The list of network interface cards and associated details for the bare metal machine.
  HardwareInventoryResponse({
    required this.additionalHostInformation,
    required this.interfaces,
    required this.nics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalHostInformation': additionalHostInformation,
      'interfaces': pulumi.Input.mapInputValue<List<HardwareInventoryNetworkInterfaceResponse>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<HardwareInventoryNetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nics': pulumi.Input.mapInputValue<List<NicResponse>, List<Map<String, dynamic>>>(nics, (value) => pulumi.Input.encodeList<NicResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HardwareInventoryResponse.fromMap(Map<String, dynamic> map) {
    return HardwareInventoryResponse(
      additionalHostInformation: (map['additionalHostInformation'] as String).input(),
      interfaces: (pulumi.Input.decodeList<HardwareInventoryNetworkInterfaceResponse>(map['interfaces'], (value) => HardwareInventoryNetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nics: (pulumi.Input.decodeList<NicResponse>(map['nics'], (value) => NicResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

