// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig {
  /// (Optional)
  final pulumi.Input<bool?>? enableIntegrityMonitoring;
  /// (Optional)
  final pulumi.Input<bool?>? enableSecureBoot;
  /// (Optional)
  final pulumi.Input<bool?>? enableVtpm;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] (Optional)
  /// [enableSecureBoot] (Optional)
  /// [enableVtpm] (Optional)
  const RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig({
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

  factory RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig(
      enableIntegrityMonitoring: (() { final guardedValue = map['enableIntegrityMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSecureBoot: (() { final guardedValue = map['enableSecureBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableVtpm: (() { final guardedValue = map['enableVtpm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
