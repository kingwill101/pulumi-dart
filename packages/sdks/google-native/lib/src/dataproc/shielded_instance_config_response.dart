// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
class ShieldedInstanceConfigResponse {
  /// Optional. Defines whether instances have integrity monitoring enabled.
  final pulumi.Input<bool> enableIntegrityMonitoring;
  /// Optional. Defines whether instances have Secure Boot enabled.
  final pulumi.Input<bool> enableSecureBoot;
  /// Optional. Defines whether instances have the vTPM enabled.
  final pulumi.Input<bool> enableVtpm;

  /// Creates a new [ShieldedInstanceConfigResponse].
  /// [enableIntegrityMonitoring] Optional. Defines whether instances have integrity monitoring enabled.
  /// [enableSecureBoot] Optional. Defines whether instances have Secure Boot enabled.
  /// [enableVtpm] Optional. Defines whether instances have the vTPM enabled.
  const ShieldedInstanceConfigResponse({
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

  factory ShieldedInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponse(
      enableIntegrityMonitoring: pulumi.Input.fromValue(map['enableIntegrityMonitoring'] as bool),
      enableSecureBoot: pulumi.Input.fromValue(map['enableSecureBoot'] as bool),
      enableVtpm: pulumi.Input.fromValue(map['enableVtpm'] as bool),
    );
  }
}

