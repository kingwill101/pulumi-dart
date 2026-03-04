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
    this.dataSourceType,
    this.resourceGroupName,
    this.storageAccountIds,
    this.workspaceId,
    this.workspaceResourceId,
  });

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
      dataSourceType: (() {
        final guardedValue = map['dataSourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountIds: (() {
        final guardedValue = map['storageAccountIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      workspaceId: (() {
        final guardedValue = map['workspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workspaceResourceId: (() {
        final guardedValue = map['workspaceResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
