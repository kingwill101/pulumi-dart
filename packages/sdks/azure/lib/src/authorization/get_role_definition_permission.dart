// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoleDefinitionPermission {
  /// A list of actions supported by this role.
  final pulumi.Input<List<String>> actions;
  /// The conditions on this role definition, which limits the resources it can be assigned to.
  final pulumi.Input<String> condition;
  /// The version of the condition.
  final pulumi.Input<String> conditionVersion;
  /// A list of data actions allowed by this role.
  final pulumi.Input<List<String>>? dataActions;
  /// A list of actions which are denied by this role.
  final pulumi.Input<List<String>> notActions;
  /// A list of data actions which are denied by this role.
  final pulumi.Input<List<String>>? notDataActions;

  /// Creates a new [GetRoleDefinitionPermission].
  /// [actions] A list of actions supported by this role.
  /// [condition] The conditions on this role definition, which limits the resources it can be assigned to.
  /// [conditionVersion] The version of the condition.
  /// [dataActions] A list of data actions allowed by this role.
  /// [notActions] A list of actions which are denied by this role.
  /// [notDataActions] A list of data actions which are denied by this role.
  const GetRoleDefinitionPermission({
    required this.actions,
    required this.condition,
    required this.conditionVersion,
    this.dataActions,
    required this.notActions,
    this.notDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'condition': condition,
      'conditionVersion': conditionVersion,
      'dataActions': ?dataActions,
      'notActions': notActions,
      'notDataActions': ?notDataActions,
    };
  }

  factory GetRoleDefinitionPermission.fromMap(Map<String, dynamic> map) {
    return GetRoleDefinitionPermission(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      condition: pulumi.Input.fromValue(map['condition'] as String),
      conditionVersion: pulumi.Input.fromValue(map['conditionVersion'] as String),
      dataActions: (() { final guardedValue = map['dataActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notActions: pulumi.Input.fromValue((map['notActions'] as List).cast<String>()),
      notDataActions: (() { final guardedValue = map['notDataActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
