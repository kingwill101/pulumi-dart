// ignore_for_file: unused_element, unnecessary_cast


/// Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
class ShieldedInstanceConfigDataprocV1beta2 {
  /// Optional. Defines whether instances have integrity monitoring enabled.
  final bool? enableIntegrityMonitoring;
  /// Optional. Defines whether instances have Secure Boot enabled.
  final bool? enableSecureBoot;
  /// Optional. Defines whether instances have the vTPM enabled.
  final bool? enableVtpm;

  /// Creates a new [ShieldedInstanceConfigDataprocV1beta2].
  /// [enableIntegrityMonitoring] Optional. Defines whether instances have integrity monitoring enabled.
  /// [enableSecureBoot] Optional. Defines whether instances have Secure Boot enabled.
  /// [enableVtpm] Optional. Defines whether instances have the vTPM enabled.
  ShieldedInstanceConfigDataprocV1beta2({
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

  factory ShieldedInstanceConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigDataprocV1beta2(
      enableIntegrityMonitoring: map['enableIntegrityMonitoring'] == null ? null : map['enableIntegrityMonitoring'] as bool,
      enableSecureBoot: map['enableSecureBoot'] == null ? null : map['enableSecureBoot'] as bool,
      enableVtpm: map['enableVtpm'] == null ? null : map['enableVtpm'] as bool,
    );
  }
}

