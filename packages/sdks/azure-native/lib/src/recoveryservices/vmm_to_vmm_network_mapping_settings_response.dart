// ignore_for_file: unused_element, unnecessary_cast


/// E2E Network Mapping fabric specific settings.
class VmmToVmmNetworkMappingSettingsResponse {
  /// Gets the Instance type.
  /// Expected value is 'VmmToVmm'.
  final String instanceType;

  /// Creates a new [VmmToVmmNetworkMappingSettingsResponse].
  /// [instanceType] Gets the Instance type.
  VmmToVmmNetworkMappingSettingsResponse({
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
    };
  }

  factory VmmToVmmNetworkMappingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return VmmToVmmNetworkMappingSettingsResponse(
      instanceType: map['instanceType'] as String,
    );
  }
}

