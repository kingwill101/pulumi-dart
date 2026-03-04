// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_pipeline_cloud_rule_pipeline_cloud_rule_args_doc}
/// The set of arguments for PipelineCloudRule.
/// {@endtemplate}
/// {@macro pulumi_index_pipeline_cloud_rule_pipeline_cloud_rule_args_doc}
class PipelineCloudRuleArgs {
  /// The account ID where the Pipeline Cloud Rule will be created.
  final pulumi.Input<String>? accountId;

  /// Additional information about the rule.
  final pulumi.Input<String>? description;

  /// The name of the rule. This must be unique within an account.
  final pulumi.Input<String>? name;

  /// The NRQL query that defines the data to be processed by this Pipeline Cloud Rule.
  final pulumi.Input<String> nrql;

  /// Creates a new [PipelineCloudRuleArgs].
  /// [accountId] The account ID where the Pipeline Cloud Rule will be created.
  /// [description] Additional information about the rule.
  /// [name] The name of the rule. This must be unique within an account.
  /// [nrql] The NRQL query that defines the data to be processed by this Pipeline Cloud Rule.
  PipelineCloudRuleArgs({
    this.accountId,
    this.description,
    this.name,
    required this.nrql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'name': ?name,
      'nrql': nrql,
    };
  }

  factory PipelineCloudRuleArgs.fromMap(Map<String, dynamic> map) {
    return PipelineCloudRuleArgs(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nrql: pulumi.Input.fromValue(map['nrql'] as String),
    );
  }
}
