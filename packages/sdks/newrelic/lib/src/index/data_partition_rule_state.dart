// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataPartitionRule resources.
class DataPartitionRuleState {
  /// The account id associated with the data partition rule.
  final pulumi.Input<String>? accountId;
  /// Whether or not this data partition rule is deleted. Deleting a data partition rule does not delete the already persisted data. This data will be retained for a given period of time specified in the retention policy field.
  final pulumi.Input<bool>? deleted;
  /// The description of the data partition rule.
  final pulumi.Input<String>? description;
  /// Whether or not this data partition rule is enabled.
  final pulumi.Input<bool>? enabled;
  /// The NRQL to match events for this data partition rule. Logs matching this criteria will be routed to the specified data partition.
  final pulumi.Input<String>? nrql;
  /// The retention policy of the data partition data. Valid values are `SECONDARY` and `STANDARD`.
  final pulumi.Input<String>? retentionPolicy;
  /// The name of the data partition where logs will be allocated once the rule is enabled.
  final pulumi.Input<String>? targetDataPartition;

  /// Creates a new [DataPartitionRuleState].
  /// [accountId] The account id associated with the data partition rule.
  /// [deleted] Whether or not this data partition rule is deleted. Deleting a data partition rule does not delete the already persisted data. This data will be retained for a given period of time specified in the retention policy field.
  /// [description] The description of the data partition rule.
  /// [enabled] Whether or not this data partition rule is enabled.
  /// [nrql] The NRQL to match events for this data partition rule. Logs matching this criteria will be routed to the specified data partition.
  /// [retentionPolicy] The retention policy of the data partition data. Valid values are `SECONDARY` and `STANDARD`.
  /// [targetDataPartition] The name of the data partition where logs will be allocated once the rule is enabled.
  DataPartitionRuleState({
    pulumi.Output<String>? accountId,
    pulumi.Output<bool>? deleted,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? nrql,
    pulumi.Output<String>? retentionPolicy,
    pulumi.Output<String>? targetDataPartition,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      deleted = pulumi.Input.asOptionalInput<bool>(deleted),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      nrql = pulumi.Input.asOptionalInput<String>(nrql),
      retentionPolicy = pulumi.Input.asOptionalInput<String>(retentionPolicy),
      targetDataPartition = pulumi.Input.asOptionalInput<String>(targetDataPartition);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'deleted': ?deleted,
      'description': ?description,
      'enabled': ?enabled,
      'nrql': ?nrql,
      'retentionPolicy': ?retentionPolicy,
      'targetDataPartition': ?targetDataPartition,
    };
  }

  factory DataPartitionRuleState.fromMap(Map<String, dynamic> map) {
    return DataPartitionRuleState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      deleted: map['deleted'] == null ? null : pulumi.Output.create<bool>(map['deleted'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      nrql: map['nrql'] == null ? null : pulumi.Output.create<String>(map['nrql'] as String),
      retentionPolicy: map['retentionPolicy'] == null ? null : pulumi.Output.create<String>(map['retentionPolicy'] as String),
      targetDataPartition: map['targetDataPartition'] == null ? null : pulumi.Output.create<String>(map['targetDataPartition'] as String),
    );
  }
}

