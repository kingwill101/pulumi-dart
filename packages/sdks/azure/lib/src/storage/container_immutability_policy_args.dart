// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_container_immutability_policy_container_immutability_policy_args_doc}
/// The set of arguments for ContainerImmutabilityPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_container_immutability_policy_container_immutability_policy_args_doc}
class ContainerImmutabilityPolicyArgs {
  /// The time interval in days that the data needs to be kept in a non-erasable and non-modifiable state.
  final pulumi.Input<int> immutabilityPeriodInDays;
  /// Whether to lock this immutability policy. Cannot be set to `false` once the policy has been locked.
  ///
  /// &gt; **Note:** Once an Immutability Policy has been locked, it cannot be unlocked. After locking, it will only be possible to increase the value for `retentionPeriodInDays` up to 5 times for the lifetime of the policy. No other properties will be updateable. Furthermore, the Storage Container and the Storage Account in which it resides will become protected by the policy. It will no longer be possible to delete the Storage Container or the Storage Account. Please refer to [official documentation](https://learn.microsoft.com/en-us/azure/storage/blobs/immutable-policy-configure-container-scope?tabs=azure-portal#lock-a-time-based-retention-policy) for more information.
  final pulumi.Input<bool?>? locked;
  /// Whether to allow protected append writes to block and append blobs to the container. Defaults to `false`. Cannot be set with `protectedAppendWritesEnabled`.
  final pulumi.Input<bool?>? protectedAppendWritesAllEnabled;
  /// Whether to allow protected append writes to append blobs to the container. Defaults to `false`. Cannot be set with `protectedAppendWritesAllEnabled`.
  final pulumi.Input<bool?>? protectedAppendWritesEnabled;
  /// The Resource Manager ID of the Storage Container where this Immutability Policy should be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageContainerResourceManagerId;

  /// Creates a new [ContainerImmutabilityPolicyArgs].
  /// [immutabilityPeriodInDays] The time interval in days that the data needs to be kept in a non-erasable and non-modifiable state.
  /// [locked] Whether to lock this immutability policy. Cannot be set to `false` once the policy has been locked.
  /// [protectedAppendWritesAllEnabled] Whether to allow protected append writes to block and append blobs to the container. Defaults to `false`. Cannot be set with `protectedAppendWritesEnabled`.
  /// [protectedAppendWritesEnabled] Whether to allow protected append writes to append blobs to the container. Defaults to `false`. Cannot be set with `protectedAppendWritesAllEnabled`.
  /// [storageContainerResourceManagerId] The Resource Manager ID of the Storage Container where this Immutability Policy should be applied. Changing this forces a new resource to be created.
  const ContainerImmutabilityPolicyArgs({
    required this.immutabilityPeriodInDays,
    this.locked,
    this.protectedAppendWritesAllEnabled,
    this.protectedAppendWritesEnabled,
    required this.storageContainerResourceManagerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutabilityPeriodInDays': immutabilityPeriodInDays,
      'locked': ?locked,
      'protectedAppendWritesAllEnabled': ?protectedAppendWritesAllEnabled,
      'protectedAppendWritesEnabled': ?protectedAppendWritesEnabled,
      'storageContainerResourceManagerId': storageContainerResourceManagerId,
    };
  }

  factory ContainerImmutabilityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ContainerImmutabilityPolicyArgs(
      immutabilityPeriodInDays: pulumi.Input.fromValue((map['immutabilityPeriodInDays'] as num).toInt()),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protectedAppendWritesAllEnabled: (() { final guardedValue = map['protectedAppendWritesAllEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protectedAppendWritesEnabled: (() { final guardedValue = map['protectedAppendWritesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageContainerResourceManagerId: pulumi.Input.fromValue(map['storageContainerResourceManagerId'] as String),
    );
  }
}
