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

  factory InstanceFromTemplateShieldedInstanceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceFromTemplateShieldedInstanceConfig(
      enableIntegrityMonitoring: (() {
        final guardedValue = map['enableIntegrityMonitoring'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableSecureBoot: (() {
        final guardedValue = map['enableSecureBoot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableVtpm: (() {
        final guardedValue = map['enableVtpm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
