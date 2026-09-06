// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_plane_auth_options_response.dart';
import 'encryption_with_cmk_response.dart';
import 'identity_response.dart';
import 'network_rule_set_response.dart';
import 'private_endpoint_connection_response.dart';
import 'shared_private_link_resource_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// Defines the options for how the data plane API of a search service authenticates requests. This cannot be set if 'disableLocalAuth' is set to true.
  final DataPlaneAuthOptionsResponse? authOptions;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Configure this property to support the search service using either the Default Compute or Azure Confidential Compute.
  final String? computeType;
  /// A list of data exfiltration scenarios that are explicitly disallowed for the search service. Currently, the only supported value is 'All' to disable all possible data export scenarios with more fine grained controls planned for the future.
  final List<String>? dataExfiltrationProtections;
  /// When set to true, calls to the search service will not be permitted to utilize API keys for authentication. This cannot be set to true if 'dataPlaneAuthOptions' are defined.
  final bool? disableLocalAuth;
  /// A system generated property representing the service's etag that can be for optimistic concurrency control during updates.
  final String? eTag;
  /// Specifies any policy regarding encryption of resources (such as indexes) using customer manager keys within a search service.
  final EncryptionWithCmkResponse? encryptionWithCmk;
  /// The endpoint of the Azure AI Search service.
  final String? endpoint;
  /// Applicable only for the standard3 SKU. You can set this property to enable up to 3 high density partitions that allow up to 1000 indexes, which is much higher than the maximum indexes allowed for any other SKU. For the standard3 SKU, the value is either 'Default' or 'HighDensity'. For all other SKUs, this value must be 'Default'.
  final String? hostingMode;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Network specific rules that determine how the Azure AI Search service may be reached.
  final NetworkRuleSetResponse? networkRuleSet;
  /// The number of partitions in the dedicated search service; if specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are only valid for standard SKUs. For 'standard3' services with hostingMode set to 'highDensity', the allowed values are between 1 and 3.
  final int? partitionCount;
  /// The list of private endpoint connections to the Azure AI Search service.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// The state of the last provisioning operation performed on the search service. Provisioning is an intermediate state that occurs while service capacity is being established. After capacity is set up, provisioningState changes to either 'Succeeded' or 'Failed'. Client applications can poll provisioning status (the recommended polling interval is from 30 seconds to one minute) by using the Get Search Service operation to see when an operation is completed. If you are using the free service, this value tends to come back as 'Succeeded' directly in the call to Create search service. This is because the free service uses capacity that is already set up.
  final String? provisioningState;
  /// This value can be set to 'Enabled' to avoid breaking changes on existing customer resources and templates. If set to 'Disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  final String? publicNetworkAccess;
  /// The number of replicas in the dedicated search service. If specified, it must be a value between 1 and 12 inclusive for standard SKUs or between 1 and 3 inclusive for basic SKU.
  final int? replicaCount;
  /// Specifies the availability and billing plan for semantic search on the Azure AI Search service. This configuration is only available for certain pricing tiers in certain regions.
  final String? semanticSearch;
  /// The date and time the search service was last upgraded. This field will be null until the service gets upgraded for the first time.
  final String? serviceUpgradedAt;
  /// The list of shared private link resources managed by the Azure AI Search service.
  final List<SharedPrivateLinkResourceResponse>? sharedPrivateLinkResources;
  /// The SKU of the search service, which determines price tier and capacity limits. This property is required when creating a new search service.
  final SkuResponse? sku;
  /// The status of the search service. Possible values include: 'running': The search service is running and no provisioning operations are underway. 'provisioning': The search service is being provisioned or scaled up or down. 'deleting': The search service is being deleted. 'degraded': The search service is degraded. This can occur when the underlying search units are not healthy. The search service is most likely operational, but performance might be slow and some requests might be dropped. 'disabled': The search service is disabled. In this state, the service will reject all API requests. 'error': The search service is in an error state. 'stopped': The search service is in a subscription that's disabled. If your service is in the degraded, disabled, or error states, it means the Azure AI Search team is actively investigating the underlying issue. Dedicated services in these states are still chargeable based on the number of search units provisioned.
  final String? status;
  /// The details of the search service status.
  final String? statusDetails;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Indicates if the search service has an upgrade available.
  final String? upgradeAvailable;

  /// Creates a new [GetServiceResult].
  /// [authOptions] Defines the options for how the data plane API of a search service authenticates requests. This cannot be set if 'disableLocalAuth' is set to true.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [computeType] Configure this property to support the search service using either the Default Compute or Azure Confidential Compute.
  /// [dataExfiltrationProtections] A list of data exfiltration scenarios that are explicitly disallowed for the search service. Currently, the only supported value is 'All' to disable all possible data export scenarios with more fine grained controls planned for the future.
  /// [disableLocalAuth] When set to true, calls to the search service will not be permitted to utilize API keys for authentication. This cannot be set to true if 'dataPlaneAuthOptions' are defined.
  /// [eTag] A system generated property representing the service's etag that can be for optimistic concurrency control during updates.
  /// [encryptionWithCmk] Specifies any policy regarding encryption of resources (such as indexes) using customer manager keys within a search service.
  /// [endpoint] The endpoint of the Azure AI Search service.
  /// [hostingMode] Applicable only for the standard3 SKU. You can set this property to enable up to 3 high density partitions that allow up to 1000 indexes, which is much higher than the maximum indexes allowed for any other SKU. For the standard3 SKU, the value is either 'Default' or 'HighDensity'. For all other SKUs, this value must be 'Default'.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The identity of the resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkRuleSet] Network specific rules that determine how the Azure AI Search service may be reached.
  /// [partitionCount] The number of partitions in the dedicated search service; if specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are only valid for standard SKUs. For 'standard3' services with hostingMode set to 'highDensity', the allowed values are between 1 and 3.
  /// [privateEndpointConnections] The list of private endpoint connections to the Azure AI Search service.
  /// [provisioningState] The state of the last provisioning operation performed on the search service. Provisioning is an intermediate state that occurs while service capacity is being established. After capacity is set up, provisioningState changes to either 'Succeeded' or 'Failed'. Client applications can poll provisioning status (the recommended polling interval is from 30 seconds to one minute) by using the Get Search Service operation to see when an operation is completed. If you are using the free service, this value tends to come back as 'Succeeded' directly in the call to Create search service. This is because the free service uses capacity that is already set up.
  /// [publicNetworkAccess] This value can be set to 'Enabled' to avoid breaking changes on existing customer resources and templates. If set to 'Disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  /// [replicaCount] The number of replicas in the dedicated search service. If specified, it must be a value between 1 and 12 inclusive for standard SKUs or between 1 and 3 inclusive for basic SKU.
  /// [semanticSearch] Specifies the availability and billing plan for semantic search on the Azure AI Search service. This configuration is only available for certain pricing tiers in certain regions.
  /// [serviceUpgradedAt] The date and time the search service was last upgraded. This field will be null until the service gets upgraded for the first time.
  /// [sharedPrivateLinkResources] The list of shared private link resources managed by the Azure AI Search service.
  /// [sku] The SKU of the search service, which determines price tier and capacity limits. This property is required when creating a new search service.
  /// [status] The status of the search service. Possible values include: 'running': The search service is running and no provisioning operations are underway. 'provisioning': The search service is being provisioned or scaled up or down. 'deleting': The search service is being deleted. 'degraded': The search service is degraded. This can occur when the underlying search units are not healthy. The search service is most likely operational, but performance might be slow and some requests might be dropped. 'disabled': The search service is disabled. In this state, the service will reject all API requests. 'error': The search service is in an error state. 'stopped': The search service is in a subscription that's disabled. If your service is in the degraded, disabled, or error states, it means the Azure AI Search team is actively investigating the underlying issue. Dedicated services in these states are still chargeable based on the number of search units provisioned.
  /// [statusDetails] The details of the search service status.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [upgradeAvailable] Indicates if the search service has an upgrade available.
  GetServiceResult({
    this.authOptions,
    this.azureApiVersion,
    this.computeType,
    this.dataExfiltrationProtections,
    this.disableLocalAuth,
    this.eTag,
    this.encryptionWithCmk,
    this.endpoint,
    String? hostingMode,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.networkRuleSet,
    int? partitionCount,
    this.privateEndpointConnections,
    this.provisioningState,
    String? publicNetworkAccess,
    int? replicaCount,
    this.semanticSearch,
    this.serviceUpgradedAt,
    this.sharedPrivateLinkResources,
    this.sku,
    this.status,
    this.statusDetails,
    this.systemData,
    this.tags,
    this.type,
    this.upgradeAvailable,
  }) : hostingMode = hostingMode ?? 'Default', partitionCount = partitionCount ?? 1, publicNetworkAccess = publicNetworkAccess ?? 'Enabled', replicaCount = replicaCount ?? 1;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authOptions': ?authOptions?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'computeType': ?computeType,
      'dataExfiltrationProtections': ?dataExfiltrationProtections,
      'disableLocalAuth': ?disableLocalAuth,
      'eTag': ?eTag,
      'encryptionWithCmk': ?encryptionWithCmk?.toMap(),
      'endpoint': ?endpoint,
      'hostingMode': ?hostingMode,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'networkRuleSet': ?networkRuleSet?.toMap(),
      'partitionCount': ?partitionCount,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'replicaCount': ?replicaCount,
      'semanticSearch': ?semanticSearch,
      'serviceUpgradedAt': ?serviceUpgradedAt,
      'sharedPrivateLinkResources': ?(() { final guardedValue = sharedPrivateLinkResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<SharedPrivateLinkResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sku': ?sku?.toMap(),
      'status': ?status,
      'statusDetails': ?statusDetails,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'upgradeAvailable': ?upgradeAvailable,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      authOptions: (() { final guardedValue = map['authOptions']; if (guardedValue == null) return null; return DataPlaneAuthOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeType: (() { final guardedValue = map['computeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataExfiltrationProtections: (() { final guardedValue = map['dataExfiltrationProtections']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionWithCmk: (() { final guardedValue = map['encryptionWithCmk']; if (guardedValue == null) return null; return EncryptionWithCmkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostingMode: (() { final guardedValue = map['hostingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkRuleSet: (() { final guardedValue = map['networkRuleSet']; if (guardedValue == null) return null; return NetworkRuleSetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      partitionCount: (() { final guardedValue = map['partitionCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      semanticSearch: (() { final guardedValue = map['semanticSearch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceUpgradedAt: (() { final guardedValue = map['serviceUpgradedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharedPrivateLinkResources: (() { final guardedValue = map['sharedPrivateLinkResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SharedPrivateLinkResourceResponse>(guardedValue, (value) => SharedPrivateLinkResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusDetails: (() { final guardedValue = map['statusDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradeAvailable: (() { final guardedValue = map['upgradeAvailable']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
