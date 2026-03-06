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
  const DataPartitionRuleArgs({
    this.accountId,
    this.description,
    required this.enabled,
    required this.nrql,
    required this.retentionPolicy,
    required this.targetDataPartition,
  });

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      nrql: pulumi.Input.fromValue(map['nrql'] as String),
      retentionPolicy: pulumi.Input.fromValue(map['retentionPolicy'] as String),
      targetDataPartition: pulumi.Input.fromValue(map['targetDataPartition'] as String),
    );
  }
}

