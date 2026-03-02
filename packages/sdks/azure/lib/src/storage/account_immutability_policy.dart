// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountImmutabilityPolicy {
  /// When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted.
  final pulumi.Input<bool> allowProtectedAppendWrites;
  /// The immutability period for the blobs in the container since the policy creation, in days.
  final pulumi.Input<int> periodSinceCreationInDays;
  /// Defines the mode of the policy. `Disabled` state disables the policy, `Unlocked` state allows increase and decrease of immutability retention time and also allows toggling allowProtectedAppendWrites property, `Locked` state only allows the increase of the immutability retention time. A policy can only be created in a Disabled or Unlocked state and can be toggled between the two states. Only a policy in an Unlocked state can transition to a Locked state which cannot be reverted.
  final pulumi.Input<String> state;

  /// Creates a new [AccountImmutabilityPolicy].
  /// [allowProtectedAppendWrites] When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted.
  /// [periodSinceCreationInDays] The immutability period for the blobs in the container since the policy creation, in days.
  /// [state] Defines the mode of the policy. `Disabled` state disables the policy, `Unlocked` state allows increase and decrease of immutability retention time and also allows toggling allowProtectedAppendWrites property, `Locked` state only allows the increase of the immutability retention time. A policy can only be created in a Disabled or Unlocked state and can be toggled between the two states. Only a policy in an Unlocked state can transition to a Locked state which cannot be reverted.
  AccountImmutabilityPolicy({
    required this.allowProtectedAppendWrites,
    required this.periodSinceCreationInDays,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowProtectedAppendWrites': allowProtectedAppendWrites,
      'periodSinceCreationInDays': periodSinceCreationInDays,
      'state': state,
    };
  }

  factory AccountImmutabilityPolicy.fromMap(Map<String, dynamic> map) {
    return AccountImmutabilityPolicy(
      allowProtectedAppendWrites: (map['allowProtectedAppendWrites'] as bool).input(),
      periodSinceCreationInDays: (map['periodSinceCreationInDays'] as int).input(),
      state: (map['state'] as String).input(),
    );
  }
}

