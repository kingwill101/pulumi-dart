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
  /// &gt; **Note:** `security_profile` block can only be specified during creation and does not support updates.
  ///
  /// &gt; **Note:** `security_type` must be specified to set UEFI related properties including `secure_boot_enabled` and `vtpm_enabled`.
  final pulumi.Input<bool>? vtpmEnabled;

  /// Creates a new [PoolSecurityProfile].
  /// [hostEncryptionEnabled] Whether to enable host encryption for the Virtual Machine or Virtual Machine Scale Set. This will enable the encryption for all the disks including Resource/Temp disk at host itself. Possible values are `true` and `false`. Changing this forces a new resource to be created.
  /// [secureBootEnabled] Whether to enable secure boot for the Virtual Machine or Virtual Machine Scale Set. Possible values are `true` and `false`. Changing this forces a new resource to be created.
  /// [securityType] The security type of the Virtual Machine. Possible values are `confidentialVM` and `trustedLaunch`. Changing this forces a new resource to be created.
  /// [vtpmEnabled] Whether to enable virtual trusted platform module (vTPM) for the Virtual Machine or Virtual Machine Scale Set. Possible values are `true` and `false`. Changing this forces a new resource to be created.
  const PoolSecurityProfile({
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
      hostEncryptionEnabled: (() { final guardedValue = map['hostEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secureBootEnabled: (() { final guardedValue = map['secureBootEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityType: (() { final guardedValue = map['securityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vtpmEnabled: (() { final guardedValue = map['vtpmEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

