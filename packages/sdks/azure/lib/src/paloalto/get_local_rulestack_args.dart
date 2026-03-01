// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_paloalto_get_local_rulestack_get_local_rulestack_args_doc}
/// Arguments for getLocalRulestack.
/// {@endtemplate}
/// {@macro pulumi_paloalto_get_local_rulestack_get_local_rulestack_args_doc}
class GetLocalRulestackArgs {
  /// The name of this Palo Alto Networks Rulestack.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Palo Alto Networks Rulestack exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLocalRulestackArgs].
  /// [name] The name of this Palo Alto Networks Rulestack.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Networks Rulestack exists.
  GetLocalRulestackArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalRulestackArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

