// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_linked_storage_account_args_doc}
/// The set of arguments for LinkedStorageAccount.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_linked_storage_account_args_doc}
class LinkedStorageAccountArgs {
  /// Linked storage accounts type.
  final pulumi.Input<String?>? dataSourceType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Linked storage accounts resources ids.
  final pulumi.Input<List<String>?>? storageAccountIds;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [LinkedStorageAccountArgs].
  /// [dataSourceType] Linked storage accounts type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageAccountIds] Linked storage accounts resources ids.
  /// [workspaceName] The name of the workspace.
  const LinkedStorageAccountArgs({
    this.dataSourceType,
    required this.resourceGroupName,
    this.storageAccountIds,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceType': ?dataSourceType,
      'resourceGroupName': resourceGroupName,
      'storageAccountIds': ?storageAccountIds,
      'workspaceName': workspaceName,
    };
  }

  factory LinkedStorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return LinkedStorageAccountArgs(
      dataSourceType: (() { final guardedValue = map['dataSourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageAccountIds: (() { final guardedValue = map['storageAccountIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
