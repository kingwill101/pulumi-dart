// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_rule.dart';

/// {@template pulumi_contentwarehouse_v1_rule_set_args_doc}
/// The set of arguments for RuleSet.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_rule_set_args_doc}
class RuleSetArgs {
  /// Short description of the rule-set.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;
  /// The resource name of the rule set. Managed internally. Format: projects/{project_number}/locations/{location}/ruleSet/{rule_set_id}. The name is ignored when creating a rule set.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// List of rules given by the customer.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1Rule>>? rules;
  /// Source of the rules i.e., customer name.
  final pulumi.Input<String>? source;

  /// Creates a new [RuleSetArgs].
  /// [description] Short description of the rule-set.
  /// [location] Optional.
  /// [name] The resource name of the rule set. Managed internally. Format: projects/{project_number}/locations/{location}/ruleSet/{rule_set_id}. The name is ignored when creating a rule set.
  /// [project] Optional.
  /// [rules] List of rules given by the customer.
  /// [source] Source of the rules i.e., customer name.
  const RuleSetArgs({
    this.description,
    this.location,
    this.name,
    this.project,
    this.rules,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudContentwarehouseV1Rule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1Rule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'source': ?source,
    };
  }

  factory RuleSetArgs.fromMap(Map<String, dynamic> map) {
    return RuleSetArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudContentwarehouseV1Rule>(guardedValue, (value) => GoogleCloudContentwarehouseV1Rule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
