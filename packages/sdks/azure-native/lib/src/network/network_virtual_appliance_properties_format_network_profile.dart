// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_appliance_network_interface_configuration.dart';

/// Network Profile containing configurations for Public and Private NIC.
class NetworkVirtualAppliancePropertiesFormatNetworkProfile {
  final pulumi.Input<List<VirtualApplianceNetworkInterfaceConfiguration>>? networkInterfaceConfigurations;

  /// Creates a new [NetworkVirtualAppliancePropertiesFormatNetworkProfile].
  /// [networkInterfaceConfigurations] Optional.
  NetworkVirtualAppliancePropertiesFormatNetworkProfile({
    this.networkInterfaceConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VirtualApplianceNetworkInterfaceConfiguration>, List<Map<String, dynamic>>>(networkInterfaceConfigurations, (value) => pulumi.Input.encodeList<VirtualApplianceNetworkInterfaceConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkVirtualAppliancePropertiesFormatNetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualAppliancePropertiesFormatNetworkProfile(
      networkInterfaceConfigurations: map['networkInterfaceConfigurations'] == null ? null : (pulumi.Input.decodeList<VirtualApplianceNetworkInterfaceConfiguration>(map['networkInterfaceConfigurations']!, (value) => VirtualApplianceNetworkInterfaceConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

