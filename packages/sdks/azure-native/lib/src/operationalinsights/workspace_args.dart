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
  WorkspaceArgs({
    pulumi.Output<String>? defaultDataCollectionRuleResourceId,
    pulumi.Output<WorkspaceFeatures>? features,
    pulumi.Output<bool>? forceCmkForQuery,
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? publicNetworkAccessForIngestion,
    pulumi.Output<String>? publicNetworkAccessForQuery,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<int>? retentionInDays,
    pulumi.Output<WorkspaceSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<WorkspaceCapping>? workspaceCapping,
    pulumi.Output<String>? workspaceName,
  }) :
      defaultDataCollectionRuleResourceId = pulumi.Input.asOptionalInput<String>(defaultDataCollectionRuleResourceId),
      features = pulumi.Input.asOptionalInput<WorkspaceFeatures>(features),
      forceCmkForQuery = pulumi.Input.asOptionalInput<bool>(forceCmkForQuery),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      publicNetworkAccessForIngestion = pulumi.Input.asOptionalInput<String>(publicNetworkAccessForIngestion),
      publicNetworkAccessForQuery = pulumi.Input.asOptionalInput<String>(publicNetworkAccessForQuery),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retentionInDays = pulumi.Input.asOptionalInput<int>(retentionInDays),
      sku = pulumi.Input.asOptionalInput<WorkspaceSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceCapping = pulumi.Input.asOptionalInput<WorkspaceCapping>(workspaceCapping),
      workspaceName = pulumi.Input.asOptionalInput<String>(workspaceName);

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
      defaultDataCollectionRuleResourceId: map['defaultDataCollectionRuleResourceId'] == null ? null : pulumi.Output.create<String>(map['defaultDataCollectionRuleResourceId'] as String),
      features: map['features'] == null ? null : pulumi.Output.create<WorkspaceFeatures>(WorkspaceFeatures.fromMap((map['features'] as Map).cast<String, dynamic>())),
      forceCmkForQuery: map['forceCmkForQuery'] == null ? null : pulumi.Output.create<bool>(map['forceCmkForQuery'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      publicNetworkAccessForIngestion: map['publicNetworkAccessForIngestion'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccessForIngestion'] as String),
      publicNetworkAccessForQuery: map['publicNetworkAccessForQuery'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccessForQuery'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retentionInDays: map['retentionInDays'] == null ? null : pulumi.Output.create<int>(map['retentionInDays'] as int),
      sku: map['sku'] == null ? null : pulumi.Output.create<WorkspaceSku>(WorkspaceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceCapping: map['workspaceCapping'] == null ? null : pulumi.Output.create<WorkspaceCapping>(WorkspaceCapping.fromMap((map['workspaceCapping'] as Map).cast<String, dynamic>())),
      workspaceName: map['workspaceName'] == null ? null : pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

