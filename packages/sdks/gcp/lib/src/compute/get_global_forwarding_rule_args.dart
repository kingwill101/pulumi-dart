// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_global_forwarding_rule_get_global_forwarding_rule_args_doc}
/// Arguments for getGlobalForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_compute_get_global_forwarding_rule_get_global_forwarding_rule_args_doc}
class GetGlobalForwardingRuleArgs {
  /// The name of the global forwarding rule.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalForwardingRuleArgs].
  /// [name] The name of the global forwarding rule.
  /// [project] The project in which the resource belongs. If it
  GetGlobalForwardingRuleArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetGlobalForwardingRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalForwardingRuleArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

