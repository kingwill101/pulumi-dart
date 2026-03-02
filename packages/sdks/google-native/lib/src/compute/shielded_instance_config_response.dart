// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Shielded Instance options.
class ShieldedInstanceConfigResponse {
  /// Defines whether the instance has integrity monitoring enabled. Enabled by default.
  final pulumi.Input<bool> enableIntegrityMonitoring;
  /// Defines whether the instance has Secure Boot enabled. Disabled by default.
  final pulumi.Input<bool> enableSecureBoot;
  /// Defines whether the instance has the vTPM enabled. Enabled by default.
  final pulumi.Input<bool> enableVtpm;

  /// Creates a new [ShieldedInstanceConfigResponse].
  /// [enableIntegrityMonitoring] Defines whether the instance has integrity monitoring enabled. Enabled by default.
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled. Disabled by default.
  /// [enableVtpm] Defines whether the instance has the vTPM enabled. Enabled by default.
  ShieldedInstanceConfigResponse({
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
      enableIntegrityMonitoring: (map['enableIntegrityMonitoring'] as bool).input(),
      enableSecureBoot: (map['enableSecureBoot'] as bool).input(),
      enableVtpm: (map['enableVtpm'] as bool).input(),
    );
  }
}

