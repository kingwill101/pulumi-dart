// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_appliance_network_interface_configuration_properties_response.dart';

/// Represents a single NIC configuration.
class VirtualApplianceNetworkInterfaceConfigurationResponse {
  /// NIC type. This should be either PublicNic or PrivateNic.
  final pulumi.Input<String>? nicType;
  /// Represents a single NIC configuration properties.
  final pulumi.Input<VirtualApplianceNetworkInterfaceConfigurationPropertiesResponse>? properties;

  /// Creates a new [VirtualApplianceNetworkInterfaceConfigurationResponse].
  /// [nicType] NIC type. This should be either PublicNic or PrivateNic.
  /// [properties] Represents a single NIC configuration properties.
  VirtualApplianceNetworkInterfaceConfigurationResponse({
    this.nicType,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nicType': ?nicType,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualApplianceNetworkInterfaceConfigurationPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualApplianceNetworkInterfaceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceNetworkInterfaceConfigurationResponse(
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualApplianceNetworkInterfaceConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

