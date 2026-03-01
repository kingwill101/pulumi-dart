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
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppInstanceFunctionSlotArgs].
  /// [functionName] Function name.
  /// [name] Site name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot.
  GetWebAppInstanceFunctionSlotArgs({
    required pulumi.Output<String> functionName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> slot,
  }) :
      functionName = pulumi.Input.asInput<String>(functionName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

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
      functionName: pulumi.Output.create<String>(map['functionName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
    );
  }
}

