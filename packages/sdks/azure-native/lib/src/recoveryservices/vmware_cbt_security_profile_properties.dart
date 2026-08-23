// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMwareCbt security profile input.
class VMwareCbtSecurityProfileProperties {
  /// A value indicating whether confidential compute encryption to be enabled.
  final pulumi.Input<String>? isTargetVmConfidentialEncryptionEnabled;
  /// A value indicating whether integrity monitoring to be enabled.
  final pulumi.Input<String>? isTargetVmIntegrityMonitoringEnabled;
  /// A value indicating whether secure boot to be enabled.
  final pulumi.Input<String>? isTargetVmSecureBootEnabled;
  /// A value indicating whether trusted platform module to be enabled.
  final pulumi.Input<String>? isTargetVmTpmEnabled;
  /// The target VM security type.
  final pulumi.Input<String>? targetVmSecurityType;

  /// Creates a new [VMwareCbtSecurityProfileProperties].
  /// [isTargetVmConfidentialEncryptionEnabled] A value indicating whether confidential compute encryption to be enabled.
  /// [isTargetVmIntegrityMonitoringEnabled] A value indicating whether integrity monitoring to be enabled.
  /// [isTargetVmSecureBootEnabled] A value indicating whether secure boot to be enabled.
  /// [isTargetVmTpmEnabled] A value indicating whether trusted platform module to be enabled.
  /// [targetVmSecurityType] The target VM security type.
  const VMwareCbtSecurityProfileProperties({
    this.isTargetVmConfidentialEncryptionEnabled,
    this.isTargetVmIntegrityMonitoringEnabled,
    this.isTargetVmSecureBootEnabled,
    this.isTargetVmTpmEnabled,
    this.targetVmSecurityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isTargetVmConfidentialEncryptionEnabled': ?isTargetVmConfidentialEncryptionEnabled,
      'isTargetVmIntegrityMonitoringEnabled': ?isTargetVmIntegrityMonitoringEnabled,
      'isTargetVmSecureBootEnabled': ?isTargetVmSecureBootEnabled,
      'isTargetVmTpmEnabled': ?isTargetVmTpmEnabled,
      'targetVmSecurityType': ?targetVmSecurityType,
    };
  }

  factory VMwareCbtSecurityProfileProperties.fromMap(Map<String, dynamic> map) {
    return VMwareCbtSecurityProfileProperties(
      isTargetVmConfidentialEncryptionEnabled: (() { final guardedValue = map['isTargetVmConfidentialEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isTargetVmIntegrityMonitoringEnabled: (() { final guardedValue = map['isTargetVmIntegrityMonitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isTargetVmSecureBootEnabled: (() { final guardedValue = map['isTargetVmSecureBootEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isTargetVmTpmEnabled: (() { final guardedValue = map['isTargetVmTpmEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmSecurityType: (() { final guardedValue = map['targetVmSecurityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
