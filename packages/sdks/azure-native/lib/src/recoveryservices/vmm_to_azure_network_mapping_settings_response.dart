// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// E2A Network Mapping fabric specific settings.
class VmmToAzureNetworkMappingSettingsResponse {
  /// Gets the Instance type.
  /// Expected value is 'VmmToAzure'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [VmmToAzureNetworkMappingSettingsResponse].
  /// [instanceType] Gets the Instance type.
  VmmToAzureNetworkMappingSettingsResponse({required this.instanceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instanceType': instanceType};
  }

  factory VmmToAzureNetworkMappingSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmmToAzureNetworkMappingSettingsResponse(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}
