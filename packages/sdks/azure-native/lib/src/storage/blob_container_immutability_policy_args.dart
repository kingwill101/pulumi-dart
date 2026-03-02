// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_blob_container_immutability_policy_args_doc}
/// The set of arguments for BlobContainerImmutabilityPolicy.
/// {@endtemplate}
/// {@macro pulumi_storage_blob_container_immutability_policy_args_doc}
class BlobContainerImmutabilityPolicyArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.
  final pulumi.Input<bool>? allowProtectedAppendWrites;
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The 'allowProtectedAppendWrites' and 'allowProtectedAppendWritesAll' properties are mutually exclusive.
  final pulumi.Input<bool>? allowProtectedAppendWritesAll;
  /// The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  final pulumi.Input<String> containerName;
  /// The immutability period for the blobs in the container since the policy creation, in days.
  final pulumi.Input<int>? immutabilityPeriodSinceCreationInDays;
  /// The name of the blob container immutabilityPolicy within the specified storage account. ImmutabilityPolicy Name must be 'default'
  final pulumi.Input<String>? immutabilityPolicyName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [BlobContainerImmutabilityPolicyArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [allowProtectedAppendWrites] This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.
  /// [allowProtectedAppendWritesAll] This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The 'allowProtectedAppendWrites' and 'allowProtectedAppendWritesAll' properties are mutually exclusive.
  /// [containerName] The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  /// [immutabilityPeriodSinceCreationInDays] The immutability period for the blobs in the container since the policy creation, in days.
  /// [immutabilityPolicyName] The name of the blob container immutabilityPolicy within the specified storage account. ImmutabilityPolicy Name must be 'default'
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  BlobContainerImmutabilityPolicyArgs({
    required this.accountName,
    this.allowProtectedAppendWrites,
    this.allowProtectedAppendWritesAll,
    required this.containerName,
    this.immutabilityPeriodSinceCreationInDays,
    this.immutabilityPolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'allowProtectedAppendWrites': ?allowProtectedAppendWrites,
      'allowProtectedAppendWritesAll': ?allowProtectedAppendWritesAll,
      'containerName': containerName,
      'immutabilityPeriodSinceCreationInDays': ?immutabilityPeriodSinceCreationInDays,
      'immutabilityPolicyName': ?immutabilityPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory BlobContainerImmutabilityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BlobContainerImmutabilityPolicyArgs(
      accountName: (map['accountName'] as String).input(),
      allowProtectedAppendWrites: map['allowProtectedAppendWrites'] == null ? null : (map['allowProtectedAppendWrites'] as bool).input(),
      allowProtectedAppendWritesAll: map['allowProtectedAppendWritesAll'] == null ? null : (map['allowProtectedAppendWritesAll'] as bool).input(),
      containerName: (map['containerName'] as String).input(),
      immutabilityPeriodSinceCreationInDays: map['immutabilityPeriodSinceCreationInDays'] == null ? null : (map['immutabilityPeriodSinceCreationInDays'] as int).input(),
      immutabilityPolicyName: map['immutabilityPolicyName'] == null ? null : (map['immutabilityPolicyName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

