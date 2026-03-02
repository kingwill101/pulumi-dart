// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderMonitorSettingPropertiesResponse {
  /// The provisioning state.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ProviderMonitorSettingPropertiesResponse].
  /// [provisioningState] The provisioning state.
  ProviderMonitorSettingPropertiesResponse({
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
    };
  }

  factory ProviderMonitorSettingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProviderMonitorSettingPropertiesResponse(
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

