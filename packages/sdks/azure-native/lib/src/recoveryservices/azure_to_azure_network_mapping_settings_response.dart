// ignore_for_file: unused_element, unnecessary_cast


/// A2A Network Mapping fabric specific settings.
class AzureToAzureNetworkMappingSettingsResponse {
  /// Gets the Instance type.
  /// Expected value is 'AzureToAzure'.
  final String instanceType;
  /// The primary fabric location.
  final String? primaryFabricLocation;
  /// The recovery fabric location.
  final String? recoveryFabricLocation;

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
      instanceType: map['instanceType'] as String,
      primaryFabricLocation: map['primaryFabricLocation'] == null ? null : map['primaryFabricLocation'] as String,
      recoveryFabricLocation: map['recoveryFabricLocation'] == null ? null : map['recoveryFabricLocation'] as String,
    );
  }
}

