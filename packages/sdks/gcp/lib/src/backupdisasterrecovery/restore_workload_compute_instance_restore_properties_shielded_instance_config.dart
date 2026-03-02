// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig {
  /// (Optional)
  final pulumi.Input<bool>? enableIntegrityMonitoring;
  /// (Optional)
  final pulumi.Input<bool>? enableSecureBoot;
  /// (Optional)
  final pulumi.Input<bool>? enableVtpm;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] (Optional)
  /// [enableSecureBoot] (Optional)
  /// [enableVtpm] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig({
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
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : (map['enableIntegrityMonitoring']! as bool).input(),
      enableSecureBoot: map['enableSecureBoot'] == null ? null : (map['enableSecureBoot']! as bool).input(),
      enableVtpm: map['enableVtpm'] == null ? null : (map['enableVtpm']! as bool).input(),
    );
  }
}

