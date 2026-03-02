// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policy_get_policy_set_definition_get_policy_set_definition_args_doc}
/// Arguments for getPolicySetDefinition.
/// {@endtemplate}
/// {@macro pulumi_policy_get_policy_set_definition_get_policy_set_definition_args_doc}
class GetPolicySetDefinitionArgs {
  /// Specifies the display name of the Policy Set Definition. Conflicts with `name`.
  ///
  /// **NOTE** As `display_name` is not unique errors may occur when there are multiple policy set definitions with same display name.
  final pulumi.Input<String>? displayName;
  /// Only retrieve Policy Set Definitions from this Management Group.
  final pulumi.Input<String>? managementGroupName;
  /// Specifies the name of the Policy Set Definition. Conflicts with `display_name`.
  final pulumi.Input<String>? name;

  /// Creates a new [GetPolicySetDefinitionArgs].
  /// [displayName] Specifies the display name of the Policy Set Definition. Conflicts with `name`.
  /// [managementGroupName] Only retrieve Policy Set Definitions from this Management Group.
  /// [name] Specifies the name of the Policy Set Definition. Conflicts with `display_name`.
  GetPolicySetDefinitionArgs({
    this.displayName,
    this.managementGroupName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'managementGroupName': ?managementGroupName,
      'name': ?name,
    };
  }

  factory GetPolicySetDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicySetDefinitionArgs(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      managementGroupName: map['managementGroupName'] == null ? null : (map['managementGroupName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

