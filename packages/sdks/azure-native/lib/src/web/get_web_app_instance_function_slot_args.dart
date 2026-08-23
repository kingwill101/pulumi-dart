// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_instance_function_slot_args_doc}
/// Arguments for getWebAppInstanceFunctionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_instance_function_slot_args_doc}
class GetWebAppInstanceFunctionSlotArgs {
  /// Function name.
  final pulumi.Input<String> functionName;
  /// Site name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppInstanceFunctionSlotArgs].
  /// [functionName] Function name.
  /// [name] Site name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [slot] Name of the deployment slot.
  const GetWebAppInstanceFunctionSlotArgs({
    required this.functionName,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppInstanceFunctionSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppInstanceFunctionSlotArgs(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
