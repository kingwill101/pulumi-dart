// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_sync_function_triggers_slot_args_doc}
/// Arguments for listWebAppSyncFunctionTriggersSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_sync_function_triggers_slot_args_doc}
class ListWebAppSyncFunctionTriggersSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppSyncFunctionTriggersSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot.
  ListWebAppSyncFunctionTriggersSlotArgs({
    required this.name,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory ListWebAppSyncFunctionTriggersSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppSyncFunctionTriggersSlotArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      slot: (map['slot'] as String).input(),
    );
  }
}

