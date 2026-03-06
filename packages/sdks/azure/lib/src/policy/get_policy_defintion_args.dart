// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policy_get_policy_defintion_get_policy_defintion_args_doc}
/// Arguments for getPolicyDefintion.
/// {@endtemplate}
/// {@macro pulumi_policy_get_policy_defintion_get_policy_defintion_args_doc}
class GetPolicyDefintionArgs {
  /// Specifies the display name of the Policy Definition. Conflicts with `name`.
  ///
  /// &gt; **Note:** Looking up policies by `display_name` is not recommended by the Azure Policy team as the property is not unique nor immutable. As such errors may occur when there are multiple policy definitions with same display name or the display name is changed. To avoid these types of errors you may wish to use the `name` property instead.
  final pulumi.Input<String>? displayName;
  /// Only retrieve Policy Definitions from this Management Group.
  final pulumi.Input<String>? managementGroupName;
  /// Specifies the name of the Policy Definition. Conflicts with `display_name`.
  final pulumi.Input<String>? name;

  /// Creates a new [GetPolicyDefintionArgs].
  /// [displayName] Specifies the display name of the Policy Definition. Conflicts with `name`.
  /// [managementGroupName] Only retrieve Policy Definitions from this Management Group.
  /// [name] Specifies the name of the Policy Definition. Conflicts with `display_name`.
  const GetPolicyDefintionArgs({
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

  factory GetPolicyDefintionArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyDefintionArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementGroupName: (() { final guardedValue = map['managementGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

