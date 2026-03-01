// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NrqlDropRule resources.
class NrqlDropRuleState {
  /// Account where the drop rule will be put. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// An action type specifying how to apply the NRQL string (either `drop_data`, `drop_attributes`, or ` drop_attributes_from_metric_aggregates`).
  final pulumi.Input<String>? action;
  /// The description of the drop rule.
  final pulumi.Input<String>? description;
  /// A NRQL string that specifies what data types to drop.
  final pulumi.Input<String>? nrql;
  /// The ID (GUID) of the corresponding Pipeline Cloud Rule, (migrated upstream by New Relic, in light of the upcoming EOL, as stated in the Deprecation Warning above). This can be used to import the corresponding Pipeline Cloud Rule as a [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule) resource, as explained in our Drop Rules EOL Migration Guide.
  final pulumi.Input<String>? pipelineCloudRuleEntityId;
  /// The id, uniquely identifying the rule.
  final pulumi.Input<String>? ruleId;

  /// Creates a new [NrqlDropRuleState].
  /// [accountId] Account where the drop rule will be put. Defaults to the account associated with the API key used.
  /// [action] An action type specifying how to apply the NRQL string (either `drop_data`, `drop_attributes`, or ` drop_attributes_from_metric_aggregates`).
  /// [description] The description of the drop rule.
  /// [nrql] A NRQL string that specifies what data types to drop.
  /// [pipelineCloudRuleEntityId] The ID (GUID) of the corresponding Pipeline Cloud Rule, (migrated upstream by New Relic, in light of the upcoming EOL, as stated in the Deprecation Warning above). This can be used to import the corresponding Pipeline Cloud Rule as a [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule) resource, as explained in our Drop Rules EOL Migration Guide.
  /// [ruleId] The id, uniquely identifying the rule.
  NrqlDropRuleState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? action,
    pulumi.Output<String>? description,
    pulumi.Output<String>? nrql,
    pulumi.Output<String>? pipelineCloudRuleEntityId,
    pulumi.Output<String>? ruleId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      action = pulumi.Input.asOptionalInput<String>(action),
      description = pulumi.Input.asOptionalInput<String>(description),
      nrql = pulumi.Input.asOptionalInput<String>(nrql),
      pipelineCloudRuleEntityId = pulumi.Input.asOptionalInput<String>(pipelineCloudRuleEntityId),
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'action': ?action,
      'description': ?description,
      'nrql': ?nrql,
      'pipelineCloudRuleEntityId': ?pipelineCloudRuleEntityId,
      'ruleId': ?ruleId,
    };
  }

  factory NrqlDropRuleState.fromMap(Map<String, dynamic> map) {
    return NrqlDropRuleState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      nrql: map['nrql'] == null ? null : pulumi.Output.create<String>(map['nrql'] as String),
      pipelineCloudRuleEntityId: map['pipelineCloudRuleEntityId'] == null ? null : pulumi.Output.create<String>(map['pipelineCloudRuleEntityId'] as String),
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<String>(map['ruleId'] as String),
    );
  }
}

