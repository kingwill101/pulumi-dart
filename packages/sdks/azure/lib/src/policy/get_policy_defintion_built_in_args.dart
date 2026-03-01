// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policy_get_policy_defintion_built_in_get_policy_defintion_built_in_args_doc}
/// Arguments for getPolicyDefintionBuiltIn.
/// {@endtemplate}
/// {@macro pulumi_policy_get_policy_defintion_built_in_get_policy_defintion_built_in_args_doc}
class GetPolicyDefintionBuiltInArgs {
  /// Specifies the display name of the Policy Definition. Conflicts with `name`.
  ///
  /// > **Note:** As `display_name` is not unique errors may occur when there are multiple policy definitions with same display name.
  final pulumi.Input<String>? displayName;
  /// Only retrieve Policy Definitions from this Management Group.
  final pulumi.Input<String>? managementGroupName;
  /// Specifies the name of the Policy Definition. Conflicts with `display_name`.
  final pulumi.Input<String>? name;

  /// Creates a new [GetPolicyDefintionBuiltInArgs].
  /// [displayName] Specifies the display name of the Policy Definition. Conflicts with `name`.
  /// [managementGroupName] Only retrieve Policy Definitions from this Management Group.
  /// [name] Specifies the name of the Policy Definition. Conflicts with `display_name`.
  GetPolicyDefintionBuiltInArgs({
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? managementGroupName,
    pulumi.Output<String>? name,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      managementGroupName = pulumi.Input.asOptionalInput<String>(managementGroupName),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'managementGroupName': ?managementGroupName,
      'name': ?name,
    };
  }

  factory GetPolicyDefintionBuiltInArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyDefintionBuiltInArgs(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      managementGroupName: map['managementGroupName'] == null ? null : pulumi.Output.create<String>(map['managementGroupName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

