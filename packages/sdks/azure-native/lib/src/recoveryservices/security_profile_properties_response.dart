// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Security profile input.
class SecurityProfilePropertiesResponse {
  /// A value indicating whether confidential compute encryption to be enabled.
  final pulumi.Input<String>? targetVmConfidentialEncryption;
  /// A value indicating whether integrity monitoring to be enabled.
  final pulumi.Input<String>? targetVmMonitoring;
  /// A value indicating whether secure boot to be enabled.
  final pulumi.Input<String>? targetVmSecureBoot;
  /// The target VM security type.
  final pulumi.Input<String>? targetVmSecurityType;
  /// A value indicating whether trusted platform module to be enabled.
  final pulumi.Input<String>? targetVmTpm;

  /// Creates a new [SecurityProfilePropertiesResponse].
  /// [targetVmConfidentialEncryption] A value indicating whether confidential compute encryption to be enabled.
  /// [targetVmMonitoring] A value indicating whether integrity monitoring to be enabled.
  /// [targetVmSecureBoot] A value indicating whether secure boot to be enabled.
  /// [targetVmSecurityType] The target VM security type.
  /// [targetVmTpm] A value indicating whether trusted platform module to be enabled.
  SecurityProfilePropertiesResponse({
    this.targetVmConfidentialEncryption,
    this.targetVmMonitoring,
    this.targetVmSecureBoot,
    this.targetVmSecurityType,
    this.targetVmTpm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetVmConfidentialEncryption': ?targetVmConfidentialEncryption,
      'targetVmMonitoring': ?targetVmMonitoring,
      'targetVmSecureBoot': ?targetVmSecureBoot,
      'targetVmSecurityType': ?targetVmSecurityType,
      'targetVmTpm': ?targetVmTpm,
    };
  }

  factory SecurityProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SecurityProfilePropertiesResponse(
      targetVmConfidentialEncryption: map['targetVmConfidentialEncryption'] == null ? null : (map['targetVmConfidentialEncryption'] as String).input(),
      targetVmMonitoring: map['targetVmMonitoring'] == null ? null : (map['targetVmMonitoring'] as String).input(),
      targetVmSecureBoot: map['targetVmSecureBoot'] == null ? null : (map['targetVmSecureBoot'] as String).input(),
      targetVmSecurityType: map['targetVmSecurityType'] == null ? null : (map['targetVmSecurityType'] as String).input(),
      targetVmTpm: map['targetVmTpm'] == null ? null : (map['targetVmTpm'] as String).input(),
    );
  }
}

