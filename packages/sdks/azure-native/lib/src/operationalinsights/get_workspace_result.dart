// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'private_link_scoped_resource_response.dart';
import 'system_data_response.dart';
import 'workspace_capping_response.dart';
import 'workspace_features_response.dart';
import 'workspace_sku_response.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Workspace creation date.
  final String? createdDate;
  /// This is a read-only property. Represents the ID associated with the workspace.
  final String? customerId;
  /// The resource ID of the default Data Collection Rule to use for this workspace. Expected format is - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/dataCollectionRules/{dcrName}.
  final String? defaultDataCollectionRuleResourceId;
  /// The etag of the workspace.
  final String? etag;
  /// Workspace features.
  final WorkspaceFeaturesResponse? features;
  /// Indicates whether customer managed storage is mandatory for query management.
  final bool? forceCmkForQuery;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// Workspace modification date.
  final String? modifiedDate;
  /// The name of the resource
  final String? name;
  /// List of linked private link scope resources.
  final List<PrivateLinkScopedResourceResponse>? privateLinkScopedResources;
  /// The provisioning state of the workspace.
  final String? provisioningState;
  /// The network access type for accessing Log Analytics ingestion.
  final String? publicNetworkAccessForIngestion;
  /// The network access type for accessing Log Analytics query.
  final String? publicNetworkAccessForQuery;
  /// The workspace data retention in days. Allowed values are per pricing plan. See pricing tiers documentation for details.
  final int? retentionInDays;
  /// The SKU of the workspace.
  final WorkspaceSkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The daily volume cap for ingestion.
  final WorkspaceCappingResponse? workspaceCapping;

  /// Creates a new [GetWorkspaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] Workspace creation date.
  /// [customerId] This is a read-only property. Represents the ID associated with the workspace.
  /// [defaultDataCollectionRuleResourceId] The resource ID of the default Data Collection Rule to use for this workspace. Expected format is - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/dataCollectionRules/{dcrName}.
  /// [etag] The etag of the workspace.
  /// [features] Workspace features.
  /// [forceCmkForQuery] Indicates whether customer managed storage is mandatory for query management.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the resource.
  /// [location] The geo-location where the resource lives
  /// [modifiedDate] Workspace modification date.
  /// [name] The name of the resource
  /// [privateLinkScopedResources] List of linked private link scope resources.
  /// [provisioningState] The provisioning state of the workspace.
  /// [publicNetworkAccessForIngestion] The network access type for accessing Log Analytics ingestion.
  /// [publicNetworkAccessForQuery] The network access type for accessing Log Analytics query.
  /// [retentionInDays] The workspace data retention in days. Allowed values are per pricing plan. See pricing tiers documentation for details.
  /// [sku] The SKU of the workspace.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workspaceCapping] The daily volume cap for ingestion.
  const GetWorkspaceResult({
    this.azureApiVersion,
    this.createdDate,
    this.customerId,
    this.defaultDataCollectionRuleResourceId,
    this.etag,
    this.features,
    this.forceCmkForQuery,
    this.id,
    this.identity,
    this.location,
    this.modifiedDate,
    this.name,
    this.privateLinkScopedResources,
    this.provisioningState,
    this.publicNetworkAccessForIngestion,
    this.publicNetworkAccessForQuery,
    this.retentionInDays,
    this.sku,
    this.systemData,
    this.tags,
    this.type,
    this.workspaceCapping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdDate': ?createdDate,
      'customerId': ?customerId,
      'defaultDataCollectionRuleResourceId': ?defaultDataCollectionRuleResourceId,
      'etag': ?etag,
      'features': ?features?.toMap(),
      'forceCmkForQuery': ?forceCmkForQuery,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'modifiedDate': ?modifiedDate,
      'name': ?name,
      'privateLinkScopedResources': ?(() { final guardedValue = privateLinkScopedResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateLinkScopedResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccessForIngestion': ?publicNetworkAccessForIngestion,
      'publicNetworkAccessForQuery': ?publicNetworkAccessForQuery,
      'retentionInDays': ?retentionInDays,
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'workspaceCapping': ?workspaceCapping?.toMap(),
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerId: (() { final guardedValue = map['customerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultDataCollectionRuleResourceId: (() { final guardedValue = map['defaultDataCollectionRuleResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return WorkspaceFeaturesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      forceCmkForQuery: (() { final guardedValue = map['forceCmkForQuery']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedDate: (() { final guardedValue = map['modifiedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkScopedResources: (() { final guardedValue = map['privateLinkScopedResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateLinkScopedResourceResponse>(guardedValue, (value) => PrivateLinkScopedResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessForIngestion: (() { final guardedValue = map['publicNetworkAccessForIngestion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessForQuery: (() { final guardedValue = map['publicNetworkAccessForQuery']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return WorkspaceSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceCapping: (() { final guardedValue = map['workspaceCapping']; if (guardedValue == null) return null; return WorkspaceCappingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
