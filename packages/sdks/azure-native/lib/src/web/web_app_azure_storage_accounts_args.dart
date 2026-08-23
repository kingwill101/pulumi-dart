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
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppAzureStorageAccountsArgs].
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [properties] Azure storage accounts.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const WebAppAzureStorageAccountsArgs({
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
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<AzureStorageInfoValue>(guardedValue, (value) => AzureStorageInfoValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
