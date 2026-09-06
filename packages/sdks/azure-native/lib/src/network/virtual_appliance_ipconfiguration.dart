// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_appliance_ipconfiguration_properties.dart';

/// Represents a single IP configuration.
class VirtualApplianceIPConfiguration {
  /// Name of the IP configuration.
  final pulumi.Input<String?>? name;
  /// Represents a single IP configuration properties.
  final pulumi.Input<VirtualApplianceIPConfigurationProperties?>? properties;

  /// Creates a new [VirtualApplianceIPConfiguration].
  /// [name] Name of the IP configuration.
  /// [properties] Represents a single IP configuration properties.
  const VirtualApplianceIPConfiguration({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualApplianceIPConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualApplianceIPConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceIPConfiguration(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualApplianceIPConfigurationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
