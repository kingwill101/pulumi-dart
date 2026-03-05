// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A set of Compute Engine Shielded instance options.
class GceShieldedInstanceConfigResponse {
  /// Optional. Whether the instance has integrity monitoring enabled.
  final pulumi.Input<bool> enableIntegrityMonitoring;
  /// Optional. Whether the instance has Secure Boot enabled.
  final pulumi.Input<bool> enableSecureBoot;
  /// Optional. Whether the instance has the vTPM enabled.
  final pulumi.Input<bool> enableVtpm;

  /// Creates a new [GceShieldedInstanceConfigResponse].
  /// [enableIntegrityMonitoring] Optional. Whether the instance has integrity monitoring enabled.
  /// [enableSecureBoot] Optional. Whether the instance has Secure Boot enabled.
  /// [enableVtpm] Optional. Whether the instance has the vTPM enabled.
  GceShieldedInstanceConfigResponse({
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

  factory GceShieldedInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return GceShieldedInstanceConfigResponse(
      enableIntegrityMonitoring: pulumi.Input.fromValue(map['enableIntegrityMonitoring'] as bool),
      enableSecureBoot: pulumi.Input.fromValue(map['enableSecureBoot'] as bool),
      enableVtpm: pulumi.Input.fromValue(map['enableVtpm'] as bool),
    );
  }
}

