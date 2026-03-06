// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_action_group_get_action_group_args_doc}
/// Arguments for getActionGroup.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_action_group_get_action_group_args_doc}
class GetActionGroupArgs {
  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Action Group is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetActionGroupArgs].
  /// [name] Specifies the name of the Action Group.
  /// [resourceGroupName] Specifies the name of the resource group the Action Group is located in.
  const GetActionGroupArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetActionGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetActionGroupArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

