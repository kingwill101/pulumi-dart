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
    this.accountId,
    this.action,
    this.description,
    this.nrql,
    this.pipelineCloudRuleEntityId,
    this.ruleId,
  });

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
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nrql: (() {
        final guardedValue = map['nrql'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pipelineCloudRuleEntityId: (() {
        final guardedValue = map['pipelineCloudRuleEntityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleId: (() {
        final guardedValue = map['ruleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
