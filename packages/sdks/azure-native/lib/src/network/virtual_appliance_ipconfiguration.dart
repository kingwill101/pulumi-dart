// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_appliance_ipconfiguration_properties.dart';

/// Represents a single IP configuration.
class VirtualApplianceIPConfiguration {
  /// Name of the IP configuration.
  final String? name;
  /// Represents a single IP configuration properties.
  final VirtualApplianceIPConfigurationProperties? properties;

  /// Creates a new [VirtualApplianceIPConfiguration].
  /// [name] Name of the IP configuration.
  /// [properties] Represents a single IP configuration properties.
  VirtualApplianceIPConfiguration({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory VirtualApplianceIPConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceIPConfiguration(
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : VirtualApplianceIPConfigurationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

