// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loganalytics_storage_insights_storage_insights_args_doc}
/// The set of arguments for StorageInsights.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_storage_insights_storage_insights_args_doc}
class StorageInsightsArgs {
  /// The names of the blob containers that the workspace should read.
  final pulumi.Input<List<String>>? blobContainerNames;
  /// The name which should be used for this Log Analytics Storage Insights. Changing this forces a new Log Analytics Storage Insights to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Log Analytics Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Storage Account used by this Log Analytics Storage Insights.
  final pulumi.Input<String> storageAccountId;
  /// The storage access key to be used to connect to the storage account.
  final pulumi.Input<String> storageAccountKey;
  /// The names of the Azure tables that the workspace should read.
  final pulumi.Input<List<String>>? tableNames;
  /// The ID of the Log Analytics Workspace within which the Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [StorageInsightsArgs].
  /// [blobContainerNames] The names of the blob containers that the workspace should read.
  /// [name] The name which should be used for this Log Analytics Storage Insights. Changing this forces a new Log Analytics Storage Insights to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created.
  /// [storageAccountId] The ID of the Storage Account used by this Log Analytics Storage Insights.
  /// [storageAccountKey] The storage access key to be used to connect to the storage account.
  /// [tableNames] The names of the Azure tables that the workspace should read.
  /// [workspaceId] The ID of the Log Analytics Workspace within which the Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created.
  StorageInsightsArgs({
    this.blobContainerNames,
    this.name,
    required this.resourceGroupName,
    required this.storageAccountId,
    required this.storageAccountKey,
    this.tableNames,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerNames': ?blobContainerNames,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'storageAccountId': storageAccountId,
      'storageAccountKey': storageAccountKey,
      'tableNames': ?tableNames,
      'workspaceId': workspaceId,
    };
  }

  factory StorageInsightsArgs.fromMap(Map<String, dynamic> map) {
    return StorageInsightsArgs(
      blobContainerNames: map['blobContainerNames'] == null ? null : ((map['blobContainerNames'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
      storageAccountKey: (map['storageAccountKey'] as String).input(),
      tableNames: map['tableNames'] == null ? null : ((map['tableNames'] as List).cast<String>()).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

