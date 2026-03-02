// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_storage_info_value.dart';

/// {@template pulumi_web_web_app_azure_storage_accounts_args_doc}
/// The set of arguments for WebAppAzureStorageAccounts.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_azure_storage_accounts_args_doc}
class WebAppAzureStorageAccountsArgs {
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Azure storage accounts.
  final pulumi.Input<Map<String, AzureStorageInfoValue>>? properties;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppAzureStorageAccountsArgs].
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [properties] Azure storage accounts.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  WebAppAzureStorageAccountsArgs({
    this.kind,
    required this.name,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<Map<String, AzureStorageInfoValue>, Map<String, Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeMapValues<AzureStorageInfoValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppAzureStorageAccountsArgs.fromMap(Map<String, dynamic> map) {
    return WebAppAzureStorageAccountsArgs(
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (pulumi.Input.decodeMapValues<AzureStorageInfoValue>(map['properties'], (value) => AzureStorageInfoValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

