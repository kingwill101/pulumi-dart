// ignore_for_file: unused_element, unnecessary_cast


class RestoreWorkloadComputeInstanceRestorePropertiesShieldedInstanceConfig {
  /// (Optional)
  final bool? enableIntegrityMonitoring;
  /// (Optional)
  final bool? enableSecureBoot;
  /// (Optional)
  final bool? enableVtpm;

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
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] == null ? null : map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] == null ? null : map['enableVtpm'] as bool,
    );
  }
}

