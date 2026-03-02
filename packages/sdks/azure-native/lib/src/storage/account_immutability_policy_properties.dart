// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This defines account-level immutability policy properties.
class AccountImmutabilityPolicyProperties {
  /// This property can only be changed for disabled and unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted.
  final pulumi.Input<bool>? allowProtectedAppendWrites;
  /// The immutability period for the blobs in the container since the policy creation, in days.
  final pulumi.Input<int>? immutabilityPeriodSinceCreationInDays;
  /// The ImmutabilityPolicy state defines the mode of the policy. Disabled state disables the policy, Unlocked state allows increase and decrease of immutability retention time and also allows toggling allowProtectedAppendWrites property, Locked state only allows the increase of the immutability retention time. A policy can only be created in a Disabled or Unlocked state and can be toggled between the two states. Only a policy in an Unlocked state can transition to a Locked state which cannot be reverted.
  final pulumi.Input<String>? state;

  /// Creates a new [AccountImmutabilityPolicyProperties].
  /// [allowProtectedAppendWrites] This property can only be changed for disabled and unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted.
  /// [immutabilityPeriodSinceCreationInDays] The immutability period for the blobs in the container since the policy creation, in days.
  /// [state] The ImmutabilityPolicy state defines the mode of the policy. Disabled state disables the policy, Unlocked state allows increase and decrease of immutability retention time and also allows toggling allowProtectedAppendWrites property, Locked state only allows the increase of the immutability retention time. A policy can only be created in a Disabled or Unlocked state and can be toggled between the two states. Only a policy in an Unlocked state can transition to a Locked state which cannot be reverted.
  AccountImmutabilityPolicyProperties({
    this.allowProtectedAppendWrites,
    this.immutabilityPeriodSinceCreationInDays,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowProtectedAppendWrites': ?allowProtectedAppendWrites,
      'immutabilityPeriodSinceCreationInDays': ?immutabilityPeriodSinceCreationInDays,
      'state': ?state,
    };
  }

  factory AccountImmutabilityPolicyProperties.fromMap(Map<String, dynamic> map) {
    return AccountImmutabilityPolicyProperties(
      allowProtectedAppendWrites: map['allowProtectedAppendWrites'] == null ? null : (map['allowProtectedAppendWrites']! as bool).input(),
      immutabilityPeriodSinceCreationInDays: map['immutabilityPeriodSinceCreationInDays'] == null ? null : (map['immutabilityPeriodSinceCreationInDays']! as int).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

