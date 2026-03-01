// ignore_for_file: unused_element, unnecessary_cast

import 'account_immutability_policy_properties_response.dart';

/// This property enables and defines account-level immutability. Enabling the feature auto-enables Blob Versioning.
class ImmutableStorageAccountResponse {
  /// A boolean flag which enables account-level immutability. All the containers under such an account have object-level immutability enabled by default.
  final bool? enabled;
  /// Specifies the default account-level immutability policy which is inherited and applied to objects that do not possess an explicit immutability policy at the object level. The object-level immutability policy has higher precedence than the container-level immutability policy, which has a higher precedence than the account-level immutability policy.
  final AccountImmutabilityPolicyPropertiesResponse? immutabilityPolicy;

  /// Creates a new [ImmutableStorageAccountResponse].
  /// [enabled] A boolean flag which enables account-level immutability. All the containers under such an account have object-level immutability enabled by default.
  /// [immutabilityPolicy] Specifies the default account-level immutability policy which is inherited and applied to objects that do not possess an explicit immutability policy at the object level. The object-level immutability policy has higher precedence than the container-level immutability policy, which has a higher precedence than the account-level immutability policy.
  ImmutableStorageAccountResponse({
    this.enabled,
    this.immutabilityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'immutabilityPolicy': ?immutabilityPolicy == null ? null : immutabilityPolicy!.toMap(),
    };
  }

  factory ImmutableStorageAccountResponse.fromMap(Map<String, dynamic> map) {
    return ImmutableStorageAccountResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      immutabilityPolicy: map['immutabilityPolicy'] == null ? null : AccountImmutabilityPolicyPropertiesResponse.fromMap((map['immutabilityPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

