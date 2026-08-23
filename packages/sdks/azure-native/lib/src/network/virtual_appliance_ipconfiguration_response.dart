// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_appliance_ipconfiguration_properties_response.dart';

/// Represents a single IP configuration.
class VirtualApplianceIPConfigurationResponse {
  /// Name of the IP configuration.
  final pulumi.Input<String>? name;
  /// Represents a single IP configuration properties.
  final pulumi.Input<VirtualApplianceIPConfigurationPropertiesResponse>? properties;

  /// Creates a new [VirtualApplianceIPConfigurationResponse].
  /// [name] Name of the IP configuration.
  /// [properties] Represents a single IP configuration properties.
  const VirtualApplianceIPConfigurationResponse({
    this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<VirtualApplianceIPConfigurationPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory VirtualApplianceIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceIPConfigurationResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualApplianceIPConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
