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
  const GetLocalRulestackArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalRulestackArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

