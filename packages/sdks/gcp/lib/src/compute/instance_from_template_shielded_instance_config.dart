// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromTemplateShieldedInstanceConfig {
  /// Whether integrity monitoring is enabled for the instance.
  final pulumi.Input<bool>? enableIntegrityMonitoring;
  /// Whether secure boot is enabled for the instance.
  final pulumi.Input<bool>? enableSecureBoot;
  /// Whether the instance uses vTPM.
  final pulumi.Input<bool>? enableVtpm;

  /// Creates a new [InstanceFromTemplateShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Whether integrity monitoring is enabled for the instance.
  /// [enableSecureBoot] Whether secure boot is enabled for the instance.
  /// [enableVtpm] Whether the instance uses vTPM.
  InstanceFromTemplateShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': ?enableIntegrityMonitoring,
      'enableSecureBoot': ?enableSecureBoot,
      'enableVtpm': ?enableVtpm,
    };
  }

  factory InstanceFromTemplateShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateShieldedInstanceConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : (map['enableIntegrityMonitoring'] as bool).input(),
      enableSecureBoot: map['enableSecureBoot'] == null ? null : (map['enableSecureBoot'] as bool).input(),
      enableVtpm: map['enableVtpm'] == null ? null : (map['enableVtpm'] as bool).input(),
    );
  }
}

