import 'package:pulumi/pulumi.dart' as pulumi;

/// The ImmutabilityPolicy state defines the mode of the policy. Disabled state disables the policy, Unlocked state allows increase and decrease of immutability retention time and also allows toggling allowProtectedAppendWrites property, Locked state only allows the increase of the immutability retention time. A policy can only be created in a Disabled or Unlocked state and can be toggled between the two states. Only a policy in an Unlocked state can transition to a Locked state which cannot be reverted.
enum AccountImmutabilityPolicyState implements pulumi.PulumiEnum<String> {
  valueUnlocked("Unlocked"),
  valueLocked("Locked"),
  valueDisabled("Disabled");

  const AccountImmutabilityPolicyState(this.wireValue);
  @override
  final String wireValue;

  static AccountImmutabilityPolicyState fromValue(String value) {
    for (final item in AccountImmutabilityPolicyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountImmutabilityPolicyState value: $value');
  }
}
