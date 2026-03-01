// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contentwarehouse_v1_get_rule_set_args_doc}
/// Arguments for getRuleSet.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_get_rule_set_args_doc}
class GetRuleSetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> ruleSetId;

  /// Creates a new [GetRuleSetArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [ruleSetId] Required.
  GetRuleSetArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> ruleSetId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      ruleSetId = pulumi.Input.asInput<String>(ruleSetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'ruleSetId': ruleSetId,
    };
  }

  factory GetRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleSetArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      ruleSetId: pulumi.Output.create<String>(map['ruleSetId'] as String),
    );
  }
}

