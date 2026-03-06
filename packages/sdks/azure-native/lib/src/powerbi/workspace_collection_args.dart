// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_sku.dart';

/// {@template pulumi_powerbi_workspace_collection_args_doc}
/// The set of arguments for WorkspaceCollection.
/// {@endtemplate}
/// {@macro pulumi_powerbi_workspace_collection_args_doc}
class WorkspaceCollectionArgs {
  /// Azure location
  final pulumi.Input<String>? location;
  /// Azure resource group
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<AzureSku>? sku;
  final pulumi.Input<Map<String, String>>? tags;
  /// Power BI Embedded Workspace Collection name
  final pulumi.Input<String>? workspaceCollectionName;

  /// Creates a new [WorkspaceCollectionArgs].
  /// [location] Azure location
  /// [resourceGroupName] Azure resource group
  /// [sku] Optional.
  /// [tags] Optional.
  /// [workspaceCollectionName] Power BI Embedded Workspace Collection name
  const WorkspaceCollectionArgs({
    this.location,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.workspaceCollectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<AzureSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceCollectionName': ?workspaceCollectionName,
    };
  }

  factory WorkspaceCollectionArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceCollectionArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceCollectionName: (() { final guardedValue = map['workspaceCollectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

