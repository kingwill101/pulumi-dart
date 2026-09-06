// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_immutability_policy_properties.dart';

/// This property enables and defines account-level immutability. Enabling the feature auto-enables Blob Versioning.
class ImmutableStorageAccount {
  /// A boolean flag which enables account-level immutability. All the containers under such an account have object-level immutability enabled by default.
  final pulumi.Input<bool?>? enabled;
  /// Specifies the default account-level immutability policy which is inherited and applied to objects that do not possess an explicit immutability policy at the object level. The object-level immutability policy has higher precedence than the container-level immutability policy, which has a higher precedence than the account-level immutability policy.
  final pulumi.Input<AccountImmutabilityPolicyProperties?>? immutabilityPolicy;

  /// Creates a new [ImmutableStorageAccount].
  /// [enabled] A boolean flag which enables account-level immutability. All the containers under such an account have object-level immutability enabled by default.
  /// [immutabilityPolicy] Specifies the default account-level immutability policy which is inherited and applied to objects that do not possess an explicit immutability policy at the object level. The object-level immutability policy has higher precedence than the container-level immutability policy, which has a higher precedence than the account-level immutability policy.
  const ImmutableStorageAccount({
    this.enabled,
    this.immutabilityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'immutabilityPolicy': ?pulumi.Input.mapOptionalInputValue<AccountImmutabilityPolicyProperties, Map<String, dynamic>>(immutabilityPolicy, (value) => value.toMap()),
    };
  }

  factory ImmutableStorageAccount.fromMap(Map<String, dynamic> map) {
    return ImmutableStorageAccount(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      immutabilityPolicy: (() { final guardedValue = map['immutabilityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountImmutabilityPolicyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
