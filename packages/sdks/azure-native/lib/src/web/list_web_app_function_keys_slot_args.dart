// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_function_keys_slot_args_doc}
/// Arguments for listWebAppFunctionKeysSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_function_keys_slot_args_doc}
class ListWebAppFunctionKeysSlotArgs {
  final pulumi.Input<String> functionName;
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppFunctionKeysSlotArgs].
  /// [functionName] Required.
  /// [name] Required.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [slot] Required.
  const ListWebAppFunctionKeysSlotArgs({
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

  factory ListWebAppFunctionKeysSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppFunctionKeysSlotArgs(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
