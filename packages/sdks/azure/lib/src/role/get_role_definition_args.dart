// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_role_get_role_definition_get_role_definition_args_doc}
/// Arguments for getRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_role_get_role_definition_get_role_definition_args_doc}
class GetRoleDefinitionArgs {
  /// Specifies the Name of either a built-in or custom Role Definition.
  ///
  /// &gt; **Note:** You can also use this for built-in roles such as `Contributor`, `Owner`, `Reader` and `Virtual Machine Contributor`
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Role Definition as a UUID/GUID.
  final pulumi.Input<String>? roleDefinitionId;
  /// Specifies the Scope at which the Custom Role Definition exists.
  ///
  /// &gt; **Note:** One of `name` or `roleDefinitionId` must be specified.
  final pulumi.Input<String>? scope;

  /// Creates a new [GetRoleDefinitionArgs].
  /// [name] Specifies the Name of either a built-in or custom Role Definition.
  /// [roleDefinitionId] Specifies the ID of the Role Definition as a UUID/GUID.
  /// [scope] Specifies the Scope at which the Custom Role Definition exists.
  const GetRoleDefinitionArgs({
    this.name,
    this.roleDefinitionId,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
    };
  }

  factory GetRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleDefinitionArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
