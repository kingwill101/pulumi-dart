// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policy_get_policy_defintion_built_in_get_policy_defintion_built_in_args_doc}
/// Arguments for getPolicyDefintionBuiltIn.
/// {@endtemplate}
/// {@macro pulumi_policy_get_policy_defintion_built_in_get_policy_defintion_built_in_args_doc}
class GetPolicyDefintionBuiltInArgs {
  /// Specifies the display name of the Policy Definition. Conflicts with `name`.
  ///
  /// &gt; **Note:** As `displayName` is not unique errors may occur when there are multiple policy definitions with same display name.
  final pulumi.Input<String?>? displayName;
  /// Only retrieve Policy Definitions from this Management Group.
  final pulumi.Input<String?>? managementGroupName;
  /// Specifies the name of the Policy Definition. Conflicts with `displayName`.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetPolicyDefintionBuiltInArgs].
  /// [displayName] Specifies the display name of the Policy Definition. Conflicts with `name`.
  /// [managementGroupName] Only retrieve Policy Definitions from this Management Group.
  /// [name] Specifies the name of the Policy Definition. Conflicts with `displayName`.
  const GetPolicyDefintionBuiltInArgs({
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

  factory GetPolicyDefintionBuiltInArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyDefintionBuiltInArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementGroupName: (() { final guardedValue = map['managementGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
