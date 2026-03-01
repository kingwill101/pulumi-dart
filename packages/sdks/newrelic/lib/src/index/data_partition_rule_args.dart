// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_data_partition_rule_data_partition_rule_args_doc}
/// The set of arguments for DataPartitionRule.
/// {@endtemplate}
/// {@macro pulumi_index_data_partition_rule_data_partition_rule_args_doc}
class DataPartitionRuleArgs {
  /// The account id associated with the data partition rule.
  final pulumi.Input<String>? accountId;
  /// The description of the data partition rule.
  final pulumi.Input<String>? description;
  /// Whether or not this data partition rule is enabled.
  final pulumi.Input<bool> enabled;
  /// The NRQL to match events for this data partition rule. Logs matching this criteria will be routed to the specified data partition.
  final pulumi.Input<String> nrql;
  /// The retention policy of the data partition data. Valid values are `SECONDARY` and `STANDARD`.
  final pulumi.Input<String> retentionPolicy;
  /// The name of the data partition where logs will be allocated once the rule is enabled.
  final pulumi.Input<String> targetDataPartition;

  /// Creates a new [DataPartitionRuleArgs].
  /// [accountId] The account id associated with the data partition rule.
  /// [description] The description of the data partition rule.
  /// [enabled] Whether or not this data partition rule is enabled.
  /// [nrql] The NRQL to match events for this data partition rule. Logs matching this criteria will be routed to the specified data partition.
  /// [retentionPolicy] The retention policy of the data partition data. Valid values are `SECONDARY` and `STANDARD`.
  /// [targetDataPartition] The name of the data partition where logs will be allocated once the rule is enabled.
  DataPartitionRuleArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? description,
    required pulumi.Output<bool> enabled,
    required pulumi.Output<String> nrql,
    required pulumi.Output<String> retentionPolicy,
    required pulumi.Output<String> targetDataPartition,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asInput<bool>(enabled),
      nrql = pulumi.Input.asInput<String>(nrql),
      retentionPolicy = pulumi.Input.asInput<String>(retentionPolicy),
      targetDataPartition = pulumi.Input.asInput<String>(targetDataPartition);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'enabled': enabled,
      'nrql': nrql,
      'retentionPolicy': retentionPolicy,
      'targetDataPartition': targetDataPartition,
    };
  }

  factory DataPartitionRuleArgs.fromMap(Map<String, dynamic> map) {
    return DataPartitionRuleArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      nrql: pulumi.Output.create<String>(map['nrql'] as String),
      retentionPolicy: pulumi.Output.create<String>(map['retentionPolicy'] as String),
      targetDataPartition: pulumi.Output.create<String>(map['targetDataPartition'] as String),
    );
  }
}

