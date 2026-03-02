// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMwareCbt security profile input.
class VMwareCbtSecurityProfilePropertiesResponse {
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

  /// Creates a new [VMwareCbtSecurityProfilePropertiesResponse].
  /// [isTargetVmConfidentialEncryptionEnabled] A value indicating whether confidential compute encryption to be enabled.
  /// [isTargetVmIntegrityMonitoringEnabled] A value indicating whether integrity monitoring to be enabled.
  /// [isTargetVmSecureBootEnabled] A value indicating whether secure boot to be enabled.
  /// [isTargetVmTpmEnabled] A value indicating whether trusted platform module to be enabled.
  /// [targetVmSecurityType] The target VM security type.
  VMwareCbtSecurityProfilePropertiesResponse({
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

  factory VMwareCbtSecurityProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VMwareCbtSecurityProfilePropertiesResponse(
      isTargetVmConfidentialEncryptionEnabled: map['isTargetVmConfidentialEncryptionEnabled'] == null ? null : (map['isTargetVmConfidentialEncryptionEnabled']! as String).input(),
      isTargetVmIntegrityMonitoringEnabled: map['isTargetVmIntegrityMonitoringEnabled'] == null ? null : (map['isTargetVmIntegrityMonitoringEnabled']! as String).input(),
      isTargetVmSecureBootEnabled: map['isTargetVmSecureBootEnabled'] == null ? null : (map['isTargetVmSecureBootEnabled']! as String).input(),
      isTargetVmTpmEnabled: map['isTargetVmTpmEnabled'] == null ? null : (map['isTargetVmTpmEnabled']! as String).input(),
      targetVmSecurityType: map['targetVmSecurityType'] == null ? null : (map['targetVmSecurityType']! as String).input(),
    );
  }
}

