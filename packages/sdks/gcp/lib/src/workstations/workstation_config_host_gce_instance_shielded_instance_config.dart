// ignore_for_file: unused_element, unnecessary_cast


class WorkstationConfigHostGceInstanceShieldedInstanceConfig {
  /// Whether the instance has integrity monitoring enabled.
  final bool? enableIntegrityMonitoring;
  /// Whether the instance has Secure Boot enabled.
  final bool? enableSecureBoot;
  /// Whether the instance has the vTPM enabled.
  final bool? enableVtpm;

  /// Creates a new [WorkstationConfigHostGceInstanceShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Whether the instance has Secure Boot enabled.
  /// [enableVtpm] Whether the instance has the vTPM enabled.
  WorkstationConfigHostGceInstanceShieldedInstanceConfig({
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

  factory WorkstationConfigHostGceInstanceShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstanceShieldedInstanceConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] == null ? null : map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] == null ? null : map['enableVtpm'] as bool,
    );
  }
}

