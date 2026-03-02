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
    required this.location,
    this.project,
    required this.ruleSetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'ruleSetId': ruleSetId,
    };
  }

  factory GetRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleSetArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      ruleSetId: (map['ruleSetId'] as String).input(),
    );
  }
}

