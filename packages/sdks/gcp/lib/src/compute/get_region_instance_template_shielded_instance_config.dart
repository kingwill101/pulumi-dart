// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceTemplateShieldedInstanceConfig {
  /// - Compare the most recent boot measurements to the integrity policy baseline and return a pair of pass/fail results depending on whether they match or not. Defaults to true.
  final pulumi.Input<bool> enableIntegrityMonitoring;
  /// - Verify the digital signature of all boot components, and halt the boot process if signature verification fails. Defaults to false.
  final pulumi.Input<bool> enableSecureBoot;
  /// - Use a virtualized trusted platform module, which is a specialized computer chip you can use to encrypt objects like keys and certificates. Defaults to true.
  final pulumi.Input<bool> enableVtpm;

  /// Creates a new [GetRegionInstanceTemplateShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] - Compare the most recent boot measurements to the integrity policy baseline and return a pair of pass/fail results depending on whether they match or not. Defaults to true.
  /// [enableSecureBoot] - Verify the digital signature of all boot components, and halt the boot process if signature verification fails. Defaults to false.
  /// [enableVtpm] - Use a virtualized trusted platform module, which is a specialized computer chip you can use to encrypt objects like keys and certificates. Defaults to true.
  const GetRegionInstanceTemplateShieldedInstanceConfig({
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

  factory GetRegionInstanceTemplateShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateShieldedInstanceConfig(
      enableIntegrityMonitoring: pulumi.Input.fromValue(map['enableIntegrityMonitoring'] as bool),
      enableSecureBoot: pulumi.Input.fromValue(map['enableSecureBoot'] as bool),
      enableVtpm: pulumi.Input.fromValue(map['enableVtpm'] as bool),
    );
  }
}
