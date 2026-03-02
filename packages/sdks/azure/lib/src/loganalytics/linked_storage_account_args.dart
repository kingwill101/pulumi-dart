// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loganalytics_linked_storage_account_linked_storage_account_args_doc}
/// The set of arguments for LinkedStorageAccount.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_linked_storage_account_linked_storage_account_args_doc}
class LinkedStorageAccountArgs {
  /// The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are `CustomLogs`, `AzureWatson`, `Query`, `Ingestion` and `Alerts`. Changing this forces a new Log Analytics Linked Storage Account to be created.
  final pulumi.Input<String> dataSourceType;
  /// The name of the Resource Group where the Log Analytics Linked Storage Account should exist. Changing this forces a new Log Analytics Linked Storage Account to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The storage account resource ids to be linked.
  final pulumi.Input<List<String>> storageAccountIds;
  /// The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created.
  final pulumi.Input<String>? workspaceId;
  final pulumi.Input<String>? workspaceResourceId;

  /// Creates a new [LinkedStorageAccountArgs].
  /// [dataSourceType] The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are `CustomLogs`, `AzureWatson`, `Query`, `Ingestion` and `Alerts`. Changing this forces a new Log Analytics Linked Storage Account to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Linked Storage Account should exist. Changing this forces a new Log Analytics Linked Storage Account to be created.
  /// [storageAccountIds] The storage account resource ids to be linked.
  /// [workspaceId] The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created.
  /// [workspaceResourceId] Optional.
  LinkedStorageAccountArgs({
    required this.dataSourceType,
    required this.resourceGroupName,
    required this.storageAccountIds,
    this.workspaceId,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceType': dataSourceType,
      'resourceGroupName': resourceGroupName,
      'storageAccountIds': storageAccountIds,
      'workspaceId': ?workspaceId,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory LinkedStorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return LinkedStorageAccountArgs(
      dataSourceType: (map['dataSourceType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageAccountIds: ((map['storageAccountIds'] as List).cast<String>()).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId'] as String).input(),
      workspaceResourceId: map['workspaceResourceId'] == null ? null : (map['workspaceResourceId'] as String).input(),
    );
  }
}

