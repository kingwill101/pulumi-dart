// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_linked_storage_account_args_doc}
/// Arguments for getLinkedStorageAccount.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_linked_storage_account_args_doc}
class GetLinkedStorageAccountArgs {
  /// Linked storage accounts type.
  final pulumi.Input<String> dataSourceType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetLinkedStorageAccountArgs].
  /// [dataSourceType] Linked storage accounts type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetLinkedStorageAccountArgs({
    required pulumi.Output<String> dataSourceType,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      dataSourceType = pulumi.Input.asInput<String>(dataSourceType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceType': dataSourceType,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetLinkedStorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkedStorageAccountArgs(
      dataSourceType: pulumi.Output.create<String>(map['dataSourceType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

