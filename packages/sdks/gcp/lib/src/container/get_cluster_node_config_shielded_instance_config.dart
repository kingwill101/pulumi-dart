// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodeConfigShieldedInstanceConfig {
  /// Defines whether the instance has integrity monitoring enabled.
  final bool enableIntegrityMonitoring;
  /// Defines whether the instance has Secure Boot enabled.
  final bool enableSecureBoot;

  /// Creates a new [GetClusterNodeConfigShieldedInstanceConfig].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  GetClusterNodeConfigShieldedInstanceConfig({
    required this.enableIntegrityMonitoring,
    required this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIntegrityMonitoring': enableIntegrityMonitoring,
      'enableSecureBoot': enableSecureBoot,
    };
  }

  factory GetClusterNodeConfigShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigShieldedInstanceConfig(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] as bool,
    );
  }
}

