// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_appliance_network_interface_configuration_properties.dart';

/// Represents a single NIC configuration.
class VirtualApplianceNetworkInterfaceConfiguration {
  /// NIC type. This should be either PublicNic or PrivateNic.
  final pulumi.Input<String>? nicType;
  /// Represents a single NIC configuration properties.
  final pulumi.Input<VirtualApplianceNetworkInterfaceConfigurationProperties>? properties;

  /// Creates a new [VirtualApplianceNetworkInterfaceConfiguration].
  /// [nicType] NIC type. This should be either PublicNic or PrivateNic.
  /// [properties] Represents a single NIC configuration properties.
  VirtualApplianceNetworkInterfaceConfiguration({
    this.nicType,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nicType': ?nicType,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualApplianceNetworkInterfaceConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualApplianceNetworkInterfaceConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceNetworkInterfaceConfiguration(
      nicType: map['nicType'] == null ? null : (map['nicType']! as String).input(),
      properties: map['properties'] == null ? null : (VirtualApplianceNetworkInterfaceConfigurationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

