// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A2A Network Mapping fabric specific settings.
class AzureToAzureNetworkMappingSettingsResponse {
  /// Gets the Instance type.
  /// Expected value is 'AzureToAzure'.
  final pulumi.Input<String> instanceType;
  /// The primary fabric location.
  final pulumi.Input<String>? primaryFabricLocation;
  /// The recovery fabric location.
  final pulumi.Input<String>? recoveryFabricLocation;

  /// Creates a new [AzureToAzureNetworkMappingSettingsResponse].
  /// [instanceType] Gets the Instance type.
  /// [primaryFabricLocation] The primary fabric location.
  /// [recoveryFabricLocation] The recovery fabric location.
  AzureToAzureNetworkMappingSettingsResponse({
    required this.instanceType,
    this.primaryFabricLocation,
    this.recoveryFabricLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'primaryFabricLocation': ?primaryFabricLocation,
      'recoveryFabricLocation': ?recoveryFabricLocation,
    };
  }

  factory AzureToAzureNetworkMappingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AzureToAzureNetworkMappingSettingsResponse(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      primaryFabricLocation: (() { final guardedValue = map['primaryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryFabricLocation: (() { final guardedValue = map['recoveryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

