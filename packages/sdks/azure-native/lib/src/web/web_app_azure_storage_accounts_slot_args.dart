// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_storage_info_value.dart';

/// {@template pulumi_web_web_app_azure_storage_accounts_slot_args_doc}
/// The set of arguments for WebAppAzureStorageAccountsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_azure_storage_accounts_slot_args_doc}
class WebAppAzureStorageAccountsSlotArgs {
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Azure storage accounts.
  final pulumi.Input<Map<String, AzureStorageInfoValue>>? properties;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will update the Azure storage account configurations for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppAzureStorageAccountsSlotArgs].
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [properties] Azure storage accounts.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will update the Azure storage account configurations for the production slot.
  WebAppAzureStorageAccountsSlotArgs({
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    pulumi.Output<Map<String, AzureStorageInfoValue>>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> slot,
  }) :
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      properties = pulumi.Input.asOptionalInput<Map<String, AzureStorageInfoValue>>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<Map<String, AzureStorageInfoValue>, Map<String, Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeMapValues<AzureStorageInfoValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory WebAppAzureStorageAccountsSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppAzureStorageAccountsSlotArgs(
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<Map<String, AzureStorageInfoValue>>(pulumi.Input.decodeMapValues<AzureStorageInfoValue>(map['properties'], (value) => AzureStorageInfoValue.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
    );
  }
}

