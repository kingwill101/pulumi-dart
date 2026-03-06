// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_merge_info_response.dart';
import 'account_properties_response_account_status.dart';
import 'account_properties_response_endpoints.dart';
import 'account_properties_response_managed_resources.dart';
import 'account_response_sku.dart';
import 'cloud_connectors_response.dart';
import 'identity_response.dart';
import 'ingestion_storage_response.dart';
import 'private_endpoint_connection_response.dart';
import 'tracked_resource_response_system_data.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// Gets or sets the status of the account.
  final AccountPropertiesResponseAccountStatus accountStatus;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// External Cloud Service connectors
  final CloudConnectorsResponse? cloudConnectors;
  /// Gets the time at which the entity was created.
  final String createdAt;
  /// Gets the creator of the entity.
  final String createdBy;
  /// Gets the creators of the entity's object id.
  final String createdByObjectId;
  /// Gets the default domain in the account.
  final String defaultDomain;
  /// The URIs that are the public endpoints of the account.
  final AccountPropertiesResponseEndpoints endpoints;
  /// Gets or sets the friendly name.
  final String friendlyName;
  /// Gets or sets the identifier.
  final String id;
  /// The Managed Identity of the resource
  final IdentityResponse? identity;
  /// Ingestion Storage Account Info
  final IngestionStorageResponse? ingestionStorage;
  /// Gets or sets the location.
  final String? location;
  /// Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
  final String? managedEventHubState;
  /// Gets or sets the managed resource group name
  final String? managedResourceGroupName;
  /// Gets the resource identifiers of the managed resources.
  final AccountPropertiesResponseManagedResources managedResources;
  /// Gets or sets the public network access for managed resources.
  final String? managedResourcesPublicNetworkAccess;
  /// Gets or sets the Merge Info.
  final AccountMergeInfoResponse? mergeInfo;
  /// Gets or sets the name.
  final String name;
  /// Gets the private endpoint connections information.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Gets or sets the state of the provisioning.
  final String provisioningState;
  /// Gets or sets the public network access.
  final String? publicNetworkAccess;
  /// Gets or sets the Sku.
  final AccountResponseSku? sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final TrackedResourceResponseSystemData systemData;
  /// Tags on the azure resource.
  final Map<String, String>? tags;
  /// Gets or sets the state of tenant endpoint.
  final String? tenantEndpointState;
  /// Gets or sets the type.
  final String type;

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
  /// [id] Gets or sets the identifier.
  /// [identity] The Managed Identity of the resource
  /// [ingestionStorage] Ingestion Storage Account Info
  /// [location] Gets or sets the location.
  /// [managedEventHubState] Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
  /// [managedResourceGroupName] Gets or sets the managed resource group name
  /// [managedResources] Gets the resource identifiers of the managed resources.
  /// [managedResourcesPublicNetworkAccess] Gets or sets the public network access for managed resources.
  /// [mergeInfo] Gets or sets the Merge Info.
  /// [name] Gets or sets the name.
  /// [privateEndpointConnections] Gets the private endpoint connections information.
  /// [provisioningState] Gets or sets the state of the provisioning.
  /// [publicNetworkAccess] Gets or sets the public network access.
  /// [sku] Gets or sets the Sku.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Tags on the azure resource.
  /// [tenantEndpointState] Gets or sets the state of tenant endpoint.
  /// [type] Gets or sets the type.
  const GetAccountResult({
    required this.accountStatus,
    required this.azureApiVersion,
    this.cloudConnectors,
    required this.createdAt,
    required this.createdBy,
    required this.createdByObjectId,
    required this.defaultDomain,
    required this.endpoints,
    required this.friendlyName,
    required this.id,
    this.identity,
    this.ingestionStorage,
    this.location,
    this.managedEventHubState,
    this.managedResourceGroupName,
    required this.managedResources,
    this.managedResourcesPublicNetworkAccess,
    this.mergeInfo,
    required this.name,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.sku,
    required this.systemData,
    this.tags,
    this.tenantEndpointState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountStatus': accountStatus.toMap(),
      'azureApiVersion': azureApiVersion,
      'cloudConnectors': ?cloudConnectors?.toMap(),
      'createdAt': createdAt,
      'createdBy': createdBy,
      'createdByObjectId': createdByObjectId,
      'defaultDomain': defaultDomain,
      'endpoints': endpoints.toMap(),
      'friendlyName': friendlyName,
      'id': id,
      'identity': ?identity?.toMap(),
      'ingestionStorage': ?ingestionStorage?.toMap(),
      'location': ?location,
      'managedEventHubState': ?managedEventHubState,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedResources': managedResources.toMap(),
      'managedResourcesPublicNetworkAccess': ?managedResourcesPublicNetworkAccess,
      'mergeInfo': ?mergeInfo?.toMap(),
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': ?sku?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tenantEndpointState': ?tenantEndpointState,
      'type': type,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountStatus: AccountPropertiesResponseAccountStatus.fromMap((map['accountStatus']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      cloudConnectors: (() { final guardedValue = map['cloudConnectors']; if (guardedValue == null) return null; return CloudConnectorsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: map['createdAt'] as String,
      createdBy: map['createdBy'] as String,
      createdByObjectId: map['createdByObjectId'] as String,
      defaultDomain: map['defaultDomain'] as String,
      endpoints: AccountPropertiesResponseEndpoints.fromMap((map['endpoints']! as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ingestionStorage: (() { final guardedValue = map['ingestionStorage']; if (guardedValue == null) return null; return IngestionStorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedEventHubState: (() { final guardedValue = map['managedEventHubState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResourceGroupName: (() { final guardedValue = map['managedResourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResources: AccountPropertiesResponseManagedResources.fromMap((map['managedResources']! as Map).cast<String, dynamic>()),
      managedResourcesPublicNetworkAccess: (() { final guardedValue = map['managedResourcesPublicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mergeInfo: (() { final guardedValue = map['mergeInfo']; if (guardedValue == null) return null; return AccountMergeInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return AccountResponseSku.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: TrackedResourceResponseSystemData.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantEndpointState: (() { final guardedValue = map['tenantEndpointState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

