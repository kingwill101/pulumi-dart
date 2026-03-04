// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// E2E Network Mapping fabric specific settings.
class VmmToVmmNetworkMappingSettingsResponse {
  /// Gets the Instance type.
  /// Expected value is 'VmmToVmm'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [VmmToVmmNetworkMappingSettingsResponse].
  /// [instanceType] Gets the Instance type.
  VmmToVmmNetworkMappingSettingsResponse({required this.instanceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instanceType': instanceType};
  }

  factory VmmToVmmNetworkMappingSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmmToVmmNetworkMappingSettingsResponse(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}
