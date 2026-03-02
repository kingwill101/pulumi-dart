// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolSecurityProfile {
  /// Whether to enable host encryption for the Virtual Machine or Virtual Machine Scale Set. This will enable the encryption for all the disks including Resource/Temp disk at host itself. Possible values are `true` and `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? hostEncryptionEnabled;
  /// Whether to enable secure boot for the Virtual Machine or Virtual Machine Scale Set. Possible values are `true` and `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? secureBootEnabled;
  /// The security type of the Virtual Machine. Possible values are `confidentialVM` and `trustedLaunch`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? securityType;
  /// Whether to enable virtual trusted platform module (vTPM) for the Virtual Machine or Virtual Machine Scale Set. Possible values are `true` and `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `security_profile` block can only be specified during creation and does not support updates.
  ///
  /// > **Note:** `security_type` must be specified to set UEFI related properties including `secure_boot_enabled` and `vtpm_enabled`.
  final pulumi.Input<bool>? vtpmEnabled;

  /// Creates a new [PoolSecurityProfile].
  /// [hostEncryptionEnabled] Whether to enable host encryption for the Virtual Machine or Virtual Machine Scale Set. This will enable the encryption for all the disks including Resource/Temp disk at host itself. Possible values are `true` and `false`. Changing this forces a new resource to be created.
  /// [secureBootEnabled] Whether to enable secure boot for the Virtual Machine or Virtual Machine Scale Set. Possible values are `true` and `false`. Changing this forces a new resource to be created.
  /// [securityType] The security type of the Virtual Machine. Possible values are `confidentialVM` and `trustedLaunch`. Changing this forces a new resource to be created.
  /// [vtpmEnabled] Whether to enable virtual trusted platform module (vTPM) for the Virtual Machine or Virtual Machine Scale Set. Possible values are `true` and `false`. Changing this forces a new resource to be created.
  PoolSecurityProfile({
    this.hostEncryptionEnabled,
    this.secureBootEnabled,
    this.securityType,
    this.vtpmEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostEncryptionEnabled': ?hostEncryptionEnabled,
      'secureBootEnabled': ?secureBootEnabled,
      'securityType': ?securityType,
      'vtpmEnabled': ?vtpmEnabled,
    };
  }

  factory PoolSecurityProfile.fromMap(Map<String, dynamic> map) {
    return PoolSecurityProfile(
      hostEncryptionEnabled: map['hostEncryptionEnabled'] == null ? null : (map['hostEncryptionEnabled']! as bool).input(),
      secureBootEnabled: map['secureBootEnabled'] == null ? null : (map['secureBootEnabled']! as bool).input(),
      securityType: map['securityType'] == null ? null : (map['securityType']! as String).input(),
      vtpmEnabled: map['vtpmEnabled'] == null ? null : (map['vtpmEnabled']! as bool).input(),
    );
  }
}

