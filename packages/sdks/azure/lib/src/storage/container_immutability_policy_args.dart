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
  /// !> **Note:** Once an Immutability Policy has been locked, it cannot be unlocked. After locking, it will only be possible to increase the value for `retention_period_in_days` up to 5 times for the lifetime of the policy. No other properties will be updateable. Furthermore, the Storage Container and the Storage Account in which it resides will become protected by the policy. It will no longer be possible to delete the Storage Container or the Storage Account. Please refer to [official documentation](https://learn.microsoft.com/en-us/azure/storage/blobs/immutable-policy-configure-container-scope?tabs=azure-portal#lock-a-time-based-retention-policy) for more information.
  final pulumi.Input<bool>? locked;
  /// Whether to allow protected append writes to block and append blobs to the container. Defaults to `false`. Cannot be set with `protected_append_writes_enabled`.
  final pulumi.Input<bool>? protectedAppendWritesAllEnabled;
  /// Whether to allow protected append writes to append blobs to the container. Defaults to `false`. Cannot be set with `protected_append_writes_all_enabled`.
  final pulumi.Input<bool>? protectedAppendWritesEnabled;
  /// The Resource Manager ID of the Storage Container where this Immutability Policy should be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageContainerResourceManagerId;

  /// Creates a new [ContainerImmutabilityPolicyArgs].
  /// [immutabilityPeriodInDays] The time interval in days that the data needs to be kept in a non-erasable and non-modifiable state.
  /// [locked] Whether to lock this immutability policy. Cannot be set to `false` once the policy has been locked.
  /// [protectedAppendWritesAllEnabled] Whether to allow protected append writes to block and append blobs to the container. Defaults to `false`. Cannot be set with `protected_append_writes_enabled`.
  /// [protectedAppendWritesEnabled] Whether to allow protected append writes to append blobs to the container. Defaults to `false`. Cannot be set with `protected_append_writes_all_enabled`.
  /// [storageContainerResourceManagerId] The Resource Manager ID of the Storage Container where this Immutability Policy should be applied. Changing this forces a new resource to be created.
  ContainerImmutabilityPolicyArgs({
    required pulumi.Output<int> immutabilityPeriodInDays,
    pulumi.Output<bool>? locked,
    pulumi.Output<bool>? protectedAppendWritesAllEnabled,
    pulumi.Output<bool>? protectedAppendWritesEnabled,
    required pulumi.Output<String> storageContainerResourceManagerId,
  }) :
      immutabilityPeriodInDays = pulumi.Input.asInput<int>(immutabilityPeriodInDays),
      locked = pulumi.Input.asOptionalInput<bool>(locked),
      protectedAppendWritesAllEnabled = pulumi.Input.asOptionalInput<bool>(protectedAppendWritesAllEnabled),
      protectedAppendWritesEnabled = pulumi.Input.asOptionalInput<bool>(protectedAppendWritesEnabled),
      storageContainerResourceManagerId = pulumi.Input.asInput<String>(storageContainerResourceManagerId);

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
      immutabilityPeriodInDays: pulumi.Output.create<int>(map['immutabilityPeriodInDays'] as int),
      locked: map['locked'] == null ? null : pulumi.Output.create<bool>(map['locked'] as bool),
      protectedAppendWritesAllEnabled: map['protectedAppendWritesAllEnabled'] == null ? null : pulumi.Output.create<bool>(map['protectedAppendWritesAllEnabled'] as bool),
      protectedAppendWritesEnabled: map['protectedAppendWritesEnabled'] == null ? null : pulumi.Output.create<bool>(map['protectedAppendWritesEnabled'] as bool),
      storageContainerResourceManagerId: pulumi.Output.create<String>(map['storageContainerResourceManagerId'] as String),
    );
  }
}

