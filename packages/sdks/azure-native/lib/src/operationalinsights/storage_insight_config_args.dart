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
      'storageAccount':
          pulumi.Input.mapInputValue<StorageAccount, Map<String, dynamic>>(
            storageAccount,
            (value) => value.toMap(),
          ),
      'storageInsightName': ?storageInsightName,
      'tables': ?tables,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory StorageInsightConfigArgs.fromMap(Map<String, dynamic> map) {
    return StorageInsightConfigArgs(
      containers: (() {
        final guardedValue = map['containers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      eTag: (() {
        final guardedValue = map['eTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      storageAccount: pulumi.Input.fromValue(
        StorageAccount.fromMap(
          (map['storageAccount']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageInsightName: (() {
        final guardedValue = map['storageInsightName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tables: (() {
        final guardedValue = map['tables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
