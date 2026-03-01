// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_azure_storage_accounts_slot_args_doc}
/// Arguments for listWebAppAzureStorageAccountsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_azure_storage_accounts_slot_args_doc}
class ListWebAppAzureStorageAccountsSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will update the Azure storage account configurations for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppAzureStorageAccountsSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will update the Azure storage account configurations for the production slot.
  ListWebAppAzureStorageAccountsSlotArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> slot,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory ListWebAppAzureStorageAccountsSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppAzureStorageAccountsSlotArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
    );
  }
}

