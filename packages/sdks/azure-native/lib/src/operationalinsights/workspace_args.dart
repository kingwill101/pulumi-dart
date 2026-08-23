// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity.dart';
import 'workspace_capping.dart';
import 'workspace_features.dart';
import 'workspace_sku.dart';

/// {@template pulumi_operationalinsights_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_workspace_args_doc}
class WorkspaceArgs {
  /// The resource ID of the default Data Collection Rule to use for this workspace. Expected format is - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/dataCollectionRules/{dcrName}.
  final pulumi.Input<String>? defaultDataCollectionRuleResourceId;
  /// Workspace features.
  final pulumi.Input<WorkspaceFeatures>? features;
  /// Indicates whether customer managed storage is mandatory for query management.
  final pulumi.Input<bool>? forceCmkForQuery;
  /// The identity of the resource.
  final pulumi.Input<Identity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The network access type for accessing Log Analytics ingestion.
  final pulumi.Input<String>? publicNetworkAccessForIngestion;
  /// The network access type for accessing Log Analytics query.
  final pulumi.Input<String>? publicNetworkAccessForQuery;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The workspace data retention in days. Allowed values are per pricing plan. See pricing tiers documentation for details.
  final pulumi.Input<int>? retentionInDays;
  /// The SKU of the workspace.
  final pulumi.Input<WorkspaceSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The daily volume cap for ingestion.
  final pulumi.Input<WorkspaceCapping>? workspaceCapping;
  /// The name of the workspace.
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [WorkspaceArgs].
  /// [defaultDataCollectionRuleResourceId] The resource ID of the default Data Collection Rule to use for this workspace. Expected format is - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/dataCollectionRules/{dcrName}.
  /// [features] Workspace features.
  /// [forceCmkForQuery] Indicates whether customer managed storage is mandatory for query management.
  /// [identity] The identity of the resource.
  /// [location] The geo-location where the resource lives
  /// [publicNetworkAccessForIngestion] The network access type for accessing Log Analytics ingestion.
  /// [publicNetworkAccessForQuery] The network access type for accessing Log Analytics query.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [retentionInDays] The workspace data retention in days. Allowed values are per pricing plan. See pricing tiers documentation for details.
  /// [sku] The SKU of the workspace.
  /// [tags] Resource tags.
  /// [workspaceCapping] The daily volume cap for ingestion.
  /// [workspaceName] The name of the workspace.
  const WorkspaceArgs({
    this.defaultDataCollectionRuleResourceId,
    this.features,
    this.forceCmkForQuery,
    this.identity,
    this.location,
    this.publicNetworkAccessForIngestion,
    this.publicNetworkAccessForQuery,
    required this.resourceGroupName,
    this.retentionInDays,
    this.sku,
    this.tags,
    this.workspaceCapping,
    this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDataCollectionRuleResourceId': ?defaultDataCollectionRuleResourceId,
      'features': ?pulumi.Input.mapOptionalInputValue<WorkspaceFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'forceCmkForQuery': ?forceCmkForQuery,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'publicNetworkAccessForIngestion': ?publicNetworkAccessForIngestion,
      'publicNetworkAccessForQuery': ?publicNetworkAccessForQuery,
      'resourceGroupName': resourceGroupName,
      'retentionInDays': ?retentionInDays,
      'sku': ?pulumi.Input.mapOptionalInputValue<WorkspaceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceCapping': ?pulumi.Input.mapOptionalInputValue<WorkspaceCapping, Map<String, dynamic>>(workspaceCapping, (value) => value.toMap()),
      'workspaceName': ?workspaceName,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      defaultDataCollectionRuleResourceId: (() { final guardedValue = map['defaultDataCollectionRuleResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceCmkForQuery: (() { final guardedValue = map['forceCmkForQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessForIngestion: (() { final guardedValue = map['publicNetworkAccessForIngestion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessForQuery: (() { final guardedValue = map['publicNetworkAccessForQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceCapping: (() { final guardedValue = map['workspaceCapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCapping.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceName: (() { final guardedValue = map['workspaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
