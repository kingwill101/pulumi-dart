// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LinkedStorageAccount resources.
class LinkedStorageAccountState {
  /// The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are `CustomLogs`, `AzureWatson`, `Query`, `Ingestion` and `Alerts`. Changing this forces a new Log Analytics Linked Storage Account to be created.
  final pulumi.Input<String>? dataSourceType;
  /// The name of the Resource Group where the Log Analytics Linked Storage Account should exist. Changing this forces a new Log Analytics Linked Storage Account to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The storage account resource ids to be linked.
  final pulumi.Input<List<String>>? storageAccountIds;
  /// The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created.
  final pulumi.Input<String>? workspaceId;
  final pulumi.Input<String>? workspaceResourceId;

  /// Creates a new [LinkedStorageAccountState].
  /// [dataSourceType] The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are `CustomLogs`, `AzureWatson`, `Query`, `Ingestion` and `Alerts`. Changing this forces a new Log Analytics Linked Storage Account to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Linked Storage Account should exist. Changing this forces a new Log Analytics Linked Storage Account to be created.
  /// [storageAccountIds] The storage account resource ids to be linked.
  /// [workspaceId] The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created.
  /// [workspaceResourceId] Optional.
  LinkedStorageAccountState({
    pulumi.Output<String>? dataSourceType,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<String>>? storageAccountIds,
    pulumi.Output<String>? workspaceId,
    pulumi.Output<String>? workspaceResourceId,
  }) :
      dataSourceType = pulumi.Input.asOptionalInput<String>(dataSourceType),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      storageAccountIds = pulumi.Input.asOptionalInput<List<String>>(storageAccountIds),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId),
      workspaceResourceId = pulumi.Input.asOptionalInput<String>(workspaceResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceType': ?dataSourceType,
      'resourceGroupName': ?resourceGroupName,
      'storageAccountIds': ?storageAccountIds,
      'workspaceId': ?workspaceId,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory LinkedStorageAccountState.fromMap(Map<String, dynamic> map) {
    return LinkedStorageAccountState(
      dataSourceType: map['dataSourceType'] == null ? null : pulumi.Output.create<String>(map['dataSourceType'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageAccountIds: map['storageAccountIds'] == null ? null : pulumi.Output.create<List<String>>((map['storageAccountIds'] as List).cast<String>()),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
      workspaceResourceId: map['workspaceResourceId'] == null ? null : pulumi.Output.create<String>(map['workspaceResourceId'] as String),
    );
  }
}

