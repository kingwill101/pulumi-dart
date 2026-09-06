// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_merge_info_response.dart';
import 'account_properties_account_status_response.dart';
import 'account_properties_endpoints_response.dart';
import 'account_properties_managed_resources_response.dart';
import 'account_sku_response.dart';
import 'cloud_connectors_response.dart';
import 'identity_response.dart';
import 'ingestion_storage_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// Gets or sets the status of the account.
  final AccountPropertiesAccountStatusResponse? accountStatus;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// External Cloud Service connectors
  final CloudConnectorsResponse? cloudConnectors;
  /// Gets the time at which the entity was created.
  final String? createdAt;
  /// Gets the creator of the entity.
  final String? createdBy;
  /// Gets the creators of the entity's object id.
  final String? createdByObjectId;
  /// Gets the default domain in the account.
  final String? defaultDomain;
  /// The URIs that are the public endpoints of the account.
  final AccountPropertiesEndpointsResponse? endpoints;
  /// Gets or sets the friendly name.
  final String? friendlyName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The Managed Identity of the resource
  final IdentityResponse? identity;
  /// Ingestion Storage Account Info
  final IngestionStorageResponse? ingestionStorage;
  /// The geo-location where the resource lives
  final String? location;
  /// Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
  final String? managedEventHubState;
  /// Gets or sets the managed resource group name
  final String? managedResourceGroupName;
  /// Gets the resource identifiers of the managed resources.
  final AccountPropertiesManagedResourcesResponse? managedResources;
  /// Gets or sets the public network access for managed resources.
  final String? managedResourcesPublicNetworkAccess;
  /// Gets or sets the Merge Info.
  final AccountMergeInfoResponse? mergeInfo;
  /// The name of the resource
  final String? name;
  /// Gets the private endpoint connections information.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Gets or sets the state of the provisioning.
  final String? provisioningState;
  /// Gets or sets the public network access.
  final String? publicNetworkAccess;
  /// Gets or sets the Sku.
  final AccountSkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the state of tenant endpoint.
  final String? tenantEndpointState;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAccountResult].
  /// [accountStatus] Gets or sets the status of the account.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudConnectors] External Cloud Service connectors
  /// [createdAt] Gets the time at which the entity was created.
  /// [createdBy] Gets the creator of the entity.
  /// [createdByObjectId] Gets the creators of the entity's object id.
  /// [defaultDomain] Gets the default domain in the account.
  /// [endpoints] The URIs that are the public endpoints of the account.
  /// [friendlyName] Gets or sets the friendly name.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The Managed Identity of the resource
  /// [ingestionStorage] Ingestion Storage Account Info
  /// [location] The geo-location where the resource lives
  /// [managedEventHubState] Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
  /// [managedResourceGroupName] Gets or sets the managed resource group name
  /// [managedResources] Gets the resource identifiers of the managed resources.
  /// [managedResourcesPublicNetworkAccess] Gets or sets the public network access for managed resources.
  /// [mergeInfo] Gets or sets the Merge Info.
  /// [name] The name of the resource
  /// [privateEndpointConnections] Gets the private endpoint connections information.
  /// [provisioningState] Gets or sets the state of the provisioning.
  /// [publicNetworkAccess] Gets or sets the public network access.
  /// [sku] Gets or sets the Sku.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tenantEndpointState] Gets or sets the state of tenant endpoint.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAccountResult({
    this.accountStatus,
    this.azureApiVersion,
    this.cloudConnectors,
    this.createdAt,
    this.createdBy,
    this.createdByObjectId,
    this.defaultDomain,
    this.endpoints,
    this.friendlyName,
    this.id,
    this.identity,
    this.ingestionStorage,
    this.location,
    String? managedEventHubState,
    this.managedResourceGroupName,
    this.managedResources,
    String? managedResourcesPublicNetworkAccess,
    this.mergeInfo,
    this.name,
    this.privateEndpointConnections,
    this.provisioningState,
    String? publicNetworkAccess,
    this.sku,
    this.systemData,
    this.tags,
    this.tenantEndpointState,
    this.type,
  }) : managedEventHubState = managedEventHubState ?? 'NotSpecified', managedResourcesPublicNetworkAccess = managedResourcesPublicNetworkAccess ?? 'NotSpecified', publicNetworkAccess = publicNetworkAccess ?? 'Enabled';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountStatus': ?accountStatus?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'cloudConnectors': ?cloudConnectors?.toMap(),
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'createdByObjectId': ?createdByObjectId,
      'defaultDomain': ?defaultDomain,
      'endpoints': ?endpoints?.toMap(),
      'friendlyName': ?friendlyName,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'ingestionStorage': ?ingestionStorage?.toMap(),
      'location': ?location,
      'managedEventHubState': ?managedEventHubState,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedResources': ?managedResources?.toMap(),
      'managedResourcesPublicNetworkAccess': ?managedResourcesPublicNetworkAccess,
      'mergeInfo': ?mergeInfo?.toMap(),
      'name': ?name,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tenantEndpointState': ?tenantEndpointState,
      'type': ?type,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountStatus: (() { final guardedValue = map['accountStatus']; if (guardedValue == null) return null; return AccountPropertiesAccountStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudConnectors: (() { final guardedValue = map['cloudConnectors']; if (guardedValue == null) return null; return CloudConnectorsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdByObjectId: (() { final guardedValue = map['createdByObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultDomain: (() { final guardedValue = map['defaultDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return AccountPropertiesEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ingestionStorage: (() { final guardedValue = map['ingestionStorage']; if (guardedValue == null) return null; return IngestionStorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedEventHubState: (() { final guardedValue = map['managedEventHubState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResourceGroupName: (() { final guardedValue = map['managedResourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResources: (() { final guardedValue = map['managedResources']; if (guardedValue == null) return null; return AccountPropertiesManagedResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      managedResourcesPublicNetworkAccess: (() { final guardedValue = map['managedResourcesPublicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mergeInfo: (() { final guardedValue = map['mergeInfo']; if (guardedValue == null) return null; return AccountMergeInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return AccountSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantEndpointState: (() { final guardedValue = map['tenantEndpointState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
