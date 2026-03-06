// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistrationManagementSettings {
  /// The desired renewal method for this Registration. The actual renewalMethod is automatically updated to reflect this choice.
  /// If unset or equal to RENEWAL_METHOD_UNSPECIFIED, the actual renewalMethod is treated as if it were set to AUTOMATIC_RENEWAL.
  /// You cannot use RENEWAL_DISABLED during resource creation, and you can update the renewal status only when the Registration
  /// resource has state ACTIVE or SUSPENDED.
  /// When preferredRenewalMethod is set to AUTOMATIC_RENEWAL, the actual renewalMethod can be set to RENEWAL_DISABLED in case of
  /// problems with the billing account or reported domain abuse. In such cases, check the issues field on the Registration. After
  /// the problem is resolved, the renewalMethod is automatically updated to preferredRenewalMethod in a few hours.
  final pulumi.Input<String>? preferredRenewalMethod;
  /// (Output)
  /// Output only. The actual renewal method for this Registration. When preferredRenewalMethod is set to AUTOMATIC_RENEWAL,
  /// the actual renewalMethod can be equal to RENEWAL_DISABLED—for example, when there are problems with the billing account
  /// or reported domain abuse. In such cases, check the issues field on the Registration. After the problem is resolved, the
  /// renewalMethod is automatically updated to preferredRenewalMethod in a few hours.
  final pulumi.Input<String>? renewalMethod;
  /// Controls whether the domain can be transferred to another registrar. Values are UNLOCKED or LOCKED.
  final pulumi.Input<String>? transferLockState;

  /// Creates a new [RegistrationManagementSettings].
  /// [preferredRenewalMethod] The desired renewal method for this Registration. The actual renewalMethod is automatically updated to reflect this choice.
  /// [renewalMethod] (Output)
  /// [transferLockState] Controls whether the domain can be transferred to another registrar. Values are UNLOCKED or LOCKED.
  const RegistrationManagementSettings({
    this.preferredRenewalMethod,
    this.renewalMethod,
    this.transferLockState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredRenewalMethod': ?preferredRenewalMethod,
      'renewalMethod': ?renewalMethod,
      'transferLockState': ?transferLockState,
    };
  }

  factory RegistrationManagementSettings.fromMap(Map<String, dynamic> map) {
    return RegistrationManagementSettings(
      preferredRenewalMethod: (() { final guardedValue = map['preferredRenewalMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalMethod: (() { final guardedValue = map['renewalMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transferLockState: (() { final guardedValue = map['transferLockState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

