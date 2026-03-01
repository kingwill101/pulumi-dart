// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StorageInsights resources.
class StorageInsightsState {
  /// The names of the blob containers that the workspace should read.
  final pulumi.Input<List<String>>? blobContainerNames;
  /// The name which should be used for this Log Analytics Storage Insights. Changing this forces a new Log Analytics Storage Insights to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Log Analytics Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Storage Account used by this Log Analytics Storage Insights.
  final pulumi.Input<String>? storageAccountId;
  /// The storage access key to be used to connect to the storage account.
  final pulumi.Input<String>? storageAccountKey;
  /// The names of the Azure tables that the workspace should read.
  final pulumi.Input<List<String>>? tableNames;
  /// The ID of the Log Analytics Workspace within which the Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [StorageInsightsState].
  /// [blobContainerNames] The names of the blob containers that the workspace should read.
  /// [name] The name which should be used for this Log Analytics Storage Insights. Changing this forces a new Log Analytics Storage Insights to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created.
  /// [storageAccountId] The ID of the Storage Account used by this Log Analytics Storage Insights.
  /// [storageAccountKey] The storage access key to be used to connect to the storage account.
  /// [tableNames] The names of the Azure tables that the workspace should read.
  /// [workspaceId] The ID of the Log Analytics Workspace within which the Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created.
  StorageInsightsState({
    pulumi.Output<List<String>>? blobContainerNames,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? storageAccountId,
    pulumi.Output<String>? storageAccountKey,
    pulumi.Output<List<String>>? tableNames,
    pulumi.Output<String>? workspaceId,
  }) :
      blobContainerNames = pulumi.Input.asOptionalInput<List<String>>(blobContainerNames),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      storageAccountKey = pulumi.Input.asOptionalInput<String>(storageAccountKey),
      tableNames = pulumi.Input.asOptionalInput<List<String>>(tableNames),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerNames': ?blobContainerNames,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'storageAccountId': ?storageAccountId,
      'storageAccountKey': ?storageAccountKey,
      'tableNames': ?tableNames,
      'workspaceId': ?workspaceId,
    };
  }

  factory StorageInsightsState.fromMap(Map<String, dynamic> map) {
    return StorageInsightsState(
      blobContainerNames: map['blobContainerNames'] == null ? null : pulumi.Output.create<List<String>>((map['blobContainerNames'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
      storageAccountKey: map['storageAccountKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountKey'] as String),
      tableNames: map['tableNames'] == null ? null : pulumi.Output.create<List<String>>((map['tableNames'] as List).cast<String>()),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

