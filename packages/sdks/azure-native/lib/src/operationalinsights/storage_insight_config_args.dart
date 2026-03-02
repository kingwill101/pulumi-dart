// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account.dart';

/// {@template pulumi_operationalinsights_storage_insight_config_args_doc}
/// The set of arguments for StorageInsightConfig.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_storage_insight_config_args_doc}
class StorageInsightConfigArgs {
  /// The names of the blob containers that the workspace should read
  final pulumi.Input<List<String>>? containers;
  /// The ETag of the storage insight.
  final pulumi.Input<String>? eTag;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The storage account connection details
  final pulumi.Input<StorageAccount> storageAccount;
  /// Name of the storageInsightsConfigs resource
  final pulumi.Input<String>? storageInsightName;
  /// The names of the Azure tables that the workspace should read
  final pulumi.Input<List<String>>? tables;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [StorageInsightConfigArgs].
  /// [containers] The names of the blob containers that the workspace should read
  /// [eTag] The ETag of the storage insight.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageAccount] The storage account connection details
  /// [storageInsightName] Name of the storageInsightsConfigs resource
  /// [tables] The names of the Azure tables that the workspace should read
  /// [tags] Resource tags.
  /// [workspaceName] The name of the workspace.
  StorageInsightConfigArgs({
    this.containers,
    this.eTag,
    required this.resourceGroupName,
    required this.storageAccount,
    this.storageInsightName,
    this.tables,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers,
      'eTag': ?eTag,
      'resourceGroupName': resourceGroupName,
      'storageAccount': pulumi.Input.mapInputValue<StorageAccount, Map<String, dynamic>>(storageAccount, (value) => value.toMap()),
      'storageInsightName': ?storageInsightName,
      'tables': ?tables,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory StorageInsightConfigArgs.fromMap(Map<String, dynamic> map) {
    return StorageInsightConfigArgs(
      containers: map['containers'] == null ? null : ((map['containers']! as List).cast<String>()).input(),
      eTag: map['eTag'] == null ? null : (map['eTag']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageAccount: (StorageAccount.fromMap((map['storageAccount'] as Map).cast<String, dynamic>())).input(),
      storageInsightName: map['storageInsightName'] == null ? null : (map['storageInsightName']! as String).input(),
      tables: map['tables'] == null ? null : ((map['tables']! as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

