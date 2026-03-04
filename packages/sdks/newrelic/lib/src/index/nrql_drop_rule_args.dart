// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_nrql_drop_rule_nrql_drop_rule_args_doc}
/// The set of arguments for NrqlDropRule.
/// {@endtemplate}
/// {@macro pulumi_index_nrql_drop_rule_nrql_drop_rule_args_doc}
class NrqlDropRuleArgs {
  /// Account where the drop rule will be put. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;

  /// An action type specifying how to apply the NRQL string (either `drop_data`, `drop_attributes`, or ` drop_attributes_from_metric_aggregates`).
  final pulumi.Input<String> action;

  /// The description of the drop rule.
  final pulumi.Input<String>? description;

  /// A NRQL string that specifies what data types to drop.
  final pulumi.Input<String> nrql;

  /// Creates a new [NrqlDropRuleArgs].
  /// [accountId] Account where the drop rule will be put. Defaults to the account associated with the API key used.
  /// [action] An action type specifying how to apply the NRQL string (either `drop_data`, `drop_attributes`, or ` drop_attributes_from_metric_aggregates`).
  /// [description] The description of the drop rule.
  /// [nrql] A NRQL string that specifies what data types to drop.
  NrqlDropRuleArgs({
    this.accountId,
    required this.action,
    this.description,
    required this.nrql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'action': action,
      'description': ?description,
      'nrql': nrql,
    };
  }

  factory NrqlDropRuleArgs.fromMap(Map<String, dynamic> map) {
    return NrqlDropRuleArgs(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      action: pulumi.Input.fromValue(map['action'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nrql: pulumi.Input.fromValue(map['nrql'] as String),
    );
  }
}
