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

  factory ListWebAppAzureStorageAccountsSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppAzureStorageAccountsSlotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}

