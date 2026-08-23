// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled.
  final pulumi.Input<bool> enableIntegrityMonitoring;
  /// Defines whether the instance has Secure Boot enabled.
  final pulumi.Input<bool> enableSecureBoot;

  /// Creates a new [GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  const GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig({
    required this.enableIntegrityMonitoring,
    required this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': enableIntegrityMonitoring,
      'enableSecureBoot': enableSecureBoot,
    };
  }

  factory GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig(
      enableIntegrityMonitoring: pulumi.Input.fromValue(map['enableIntegrityMonitoring'] as bool),
      enableSecureBoot: pulumi.Input.fromValue(map['enableSecureBoot'] as bool),
    );
  }
}
