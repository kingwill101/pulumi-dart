// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Security profile input.
class SecurityProfileProperties {
  /// A value indicating whether confidential compute encryption to be enabled.
  final pulumi.Input<dynamic>? targetVmConfidentialEncryption;
  /// A value indicating whether integrity monitoring to be enabled.
  final pulumi.Input<dynamic>? targetVmMonitoring;
  /// A value indicating whether secure boot to be enabled.
  final pulumi.Input<dynamic>? targetVmSecureBoot;
  /// The target VM security type.
  final pulumi.Input<dynamic>? targetVmSecurityType;
  /// A value indicating whether trusted platform module to be enabled.
  final pulumi.Input<dynamic>? targetVmTpm;

  /// Creates a new [SecurityProfileProperties].
  /// [targetVmConfidentialEncryption] A value indicating whether confidential compute encryption to be enabled.
  /// [targetVmMonitoring] A value indicating whether integrity monitoring to be enabled.
  /// [targetVmSecureBoot] A value indicating whether secure boot to be enabled.
  /// [targetVmSecurityType] The target VM security type.
  /// [targetVmTpm] A value indicating whether trusted platform module to be enabled.
  const SecurityProfileProperties({
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

  factory SecurityProfileProperties.fromMap(Map<String, dynamic> map) {
    return SecurityProfileProperties(
      targetVmConfidentialEncryption: (() { final guardedValue = map['targetVmConfidentialEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetVmMonitoring: (() { final guardedValue = map['targetVmMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetVmSecureBoot: (() { final guardedValue = map['targetVmSecureBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetVmSecurityType: (() { final guardedValue = map['targetVmSecurityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetVmTpm: (() { final guardedValue = map['targetVmTpm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
