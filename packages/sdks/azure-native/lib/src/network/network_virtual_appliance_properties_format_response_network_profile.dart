// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_appliance_network_interface_configuration_response.dart';

/// Network Profile containing configurations for Public and Private NIC.
class NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile {
  final pulumi.Input<List<VirtualApplianceNetworkInterfaceConfigurationResponse>>? networkInterfaceConfigurations;

  /// Creates a new [NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile].
  /// [networkInterfaceConfigurations] Optional.
  const NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile({
    this.networkInterfaceConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VirtualApplianceNetworkInterfaceConfigurationResponse>, List<Map<String, dynamic>>>(networkInterfaceConfigurations, (value) => pulumi.Input.encodeList<VirtualApplianceNetworkInterfaceConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualAppliancePropertiesFormatResponseNetworkProfile(
      networkInterfaceConfigurations: (() { final guardedValue = map['networkInterfaceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualApplianceNetworkInterfaceConfigurationResponse>(guardedValue, (value) => VirtualApplianceNetworkInterfaceConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

