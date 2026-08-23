// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceShieldedInstanceConfig {
  /// - Whether integrity monitoring is enabled for the instance.
  final pulumi.Input<bool> enableIntegrityMonitoring;
  /// - Whether secure boot is enabled for the instance.
  final pulumi.Input<bool> enableSecureBoot;
  /// - Whether the instance uses vTPM.
  final pulumi.Input<bool> enableVtpm;

  /// Creates a new [GetInstanceShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] - Whether integrity monitoring is enabled for the instance.
  /// [enableSecureBoot] - Whether secure boot is enabled for the instance.
  /// [enableVtpm] - Whether the instance uses vTPM.
  const GetInstanceShieldedInstanceConfig({
    required this.enableIntegrityMonitoring,
    required this.enableSecureBoot,
    required this.enableVtpm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': enableIntegrityMonitoring,
      'enableSecureBoot': enableSecureBoot,
      'enableVtpm': enableVtpm,
    };
  }

  factory GetInstanceShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceShieldedInstanceConfig(
      enableIntegrityMonitoring: pulumi.Input.fromValue(map['enableIntegrityMonitoring'] as bool),
      enableSecureBoot: pulumi.Input.fromValue(map['enableSecureBoot'] as bool),
      enableVtpm: pulumi.Input.fromValue(map['enableVtpm'] as bool),
    );
  }
}
