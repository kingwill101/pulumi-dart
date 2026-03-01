// ignore_for_file: unused_element, unnecessary_cast


/// E2A Network Mapping fabric specific settings.
class VmmToAzureNetworkMappingSettingsResponse {
  /// Gets the Instance type.
  /// Expected value is 'VmmToAzure'.
  final String instanceType;

  /// Creates a new [VmmToAzureNetworkMappingSettingsResponse].
  /// [instanceType] Gets the Instance type.
  VmmToAzureNetworkMappingSettingsResponse({
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
    };
  }

  factory VmmToAzureNetworkMappingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return VmmToAzureNetworkMappingSettingsResponse(
      instanceType: map['instanceType'] as String,
    );
  }
}

