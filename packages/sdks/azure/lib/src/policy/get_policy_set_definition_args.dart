// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policy_get_policy_set_definition_get_policy_set_definition_args_doc}
/// Arguments for getPolicySetDefinition.
/// {@endtemplate}
/// {@macro pulumi_policy_get_policy_set_definition_get_policy_set_definition_args_doc}
class GetPolicySetDefinitionArgs {
  /// Specifies the display name of the Policy Set Definition. Conflicts with `name`.
  ///
  /// **NOTE** As `displayName` is not unique errors may occur when there are multiple policy set definitions with same display name.
  final pulumi.Input<String>? displayName;
  /// Only retrieve Policy Set Definitions from this Management Group.
  final pulumi.Input<String>? managementGroupName;
  /// Specifies the name of the Policy Set Definition. Conflicts with `displayName`.
  final pulumi.Input<String>? name;

  /// Creates a new [GetPolicySetDefinitionArgs].
  /// [displayName] Specifies the display name of the Policy Set Definition. Conflicts with `name`.
  /// [managementGroupName] Only retrieve Policy Set Definitions from this Management Group.
  /// [name] Specifies the name of the Policy Set Definition. Conflicts with `displayName`.
  const GetPolicySetDefinitionArgs({
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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementGroupName: (() { final guardedValue = map['managementGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
