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
      targetVmConfidentialEncryption: (() { final guardedValue = map['targetVmConfidentialEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmMonitoring: (() { final guardedValue = map['targetVmMonitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmSecureBoot: (() { final guardedValue = map['targetVmSecureBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmSecurityType: (() { final guardedValue = map['targetVmSecurityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmTpm: (() { final guardedValue = map['targetVmTpm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

