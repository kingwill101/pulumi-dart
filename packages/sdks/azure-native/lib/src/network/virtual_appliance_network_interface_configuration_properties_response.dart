// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_appliance_ipconfiguration_response.dart';

/// Represents a single NIC configuration properties.
class VirtualApplianceNetworkInterfaceConfigurationPropertiesResponse {
  final pulumi.Input<List<VirtualApplianceIPConfigurationResponse>>? ipConfigurations;

  /// Creates a new [VirtualApplianceNetworkInterfaceConfigurationPropertiesResponse].
  /// [ipConfigurations] Optional.
  VirtualApplianceNetworkInterfaceConfigurationPropertiesResponse({
    this.ipConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VirtualApplianceIPConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<VirtualApplianceIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualApplianceNetworkInterfaceConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceNetworkInterfaceConfigurationPropertiesResponse(
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<VirtualApplianceIPConfigurationResponse>(map['ipConfigurations'], (value) => VirtualApplianceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

