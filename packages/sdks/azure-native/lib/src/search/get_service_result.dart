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
  final String azureApiVersion;
  /// Configure this property to support the search service using either the Default Compute or Azure Confidential Compute.
  final String? computeType;
  /// A list of data exfiltration scenarios that are explicitly disallowed for the search service. Currently, the only supported value is 'All' to disable all possible data export scenarios with more fine grained controls planned for the future.
  final List<String>? dataExfiltrationProtections;
  /// When set to true, calls to the search service will not be permitted to utilize API keys for authentication. This cannot be set to true if 'dataPlaneAuthOptions' are defined.
  final bool? disableLocalAuth;
  /// A system generated property representing the service's etag that can be for optimistic concurrency control during updates.
  final String eTag;
  /// Specifies any policy regarding encryption of resources (such as indexes) using customer manager keys within a search service.
  final EncryptionWithCmkResponse? encryptionWithCmk;
  /// The endpoint of the Azure AI Search service.
  final String? endpoint;
  /// Applicable only for the standard3 SKU. You can set this property to enable up to 3 high density partitions that allow up to 1000 indexes, which is much higher than the maximum indexes allowed for any other SKU. For the standard3 SKU, the value is either 'Default' or 'HighDensity'. For all other SKUs, this value must be 'Default'.
  final String? hostingMode;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Network specific rules that determine how the Azure AI Search service may be reached.
  final NetworkRuleSetResponse? networkRuleSet;
  /// The number of partitions in the search service; if specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are only valid for standard SKUs. For 'standard3' services with hostingMode set to 'highDensity', the allowed values are between 1 and 3.
  final int? partitionCount;
  /// The list of private endpoint connections to the Azure AI Search service.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// The state of the last provisioning operation performed on the search service. Provisioning is an intermediate state that occurs while service capacity is being established. After capacity is set up, provisioningState changes to either 'Succeeded' or 'Failed'. Client applications can poll provisioning status (the recommended polling interval is from 30 seconds to one minute) by using the Get Search Service operation to see when an operation is completed. If you are using the free service, this value tends to come back as 'Succeeded' directly in the call to Create search service. This is because the free service uses capacity that is already set up.
  final String provisioningState;
  /// This value can be set to 'Enabled' to avoid breaking changes on existing customer resources and templates. If set to 'Disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  final String? publicNetworkAccess;
  /// The number of replicas in the search service. If specified, it must be a value between 1 and 12 inclusive for standard SKUs or between 1 and 3 inclusive for basic SKU.
  final int? replicaCount;
  /// Sets options that control the availability of semantic search. This configuration is only possible for certain Azure AI Search SKUs in certain locations.
  final String? semanticSearch;
  /// The date and time the search service was last upgraded. This field will be null until the service gets upgraded for the first time.
  final String serviceUpgradedAt;
  /// The list of shared private link resources managed by the Azure AI Search service.
  final List<SharedPrivateLinkResourceResponse> sharedPrivateLinkResources;
  /// The SKU of the search service, which determines price tier and capacity limits. This property is required when creating a new search service.
  final SkuResponse? sku;
  /// The status of the search service. Possible values include: 'running': The search service is running and no provisioning operations are underway. 'provisioning': The search service is being provisioned or scaled up or down. 'deleting': The search service is being deleted. 'degraded': The search service is degraded. This can occur when the underlying search units are not healthy. The search service is most likely operational, but performance might be slow and some requests might be dropped. 'disabled': The search service is disabled. In this state, the service will reject all API requests. 'error': The search service is in an error state. 'stopped': The search service is in a subscription that's disabled. If your service is in the degraded, disabled, or error states, it means the Azure AI Search team is actively investigating the underlying issue. Dedicated services in these states are still chargeable based on the number of search units provisioned.
  final String status;
  /// The details of the search service status.
  final String statusDetails;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
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
  /// [partitionCount] The number of partitions in the search service; if specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are only valid for standard SKUs. For 'standard3' services with hostingMode set to 'highDensity', the allowed values are between 1 and 3.
  /// [privateEndpointConnections] The list of private endpoint connections to the Azure AI Search service.
  /// [provisioningState] The state of the last provisioning operation performed on the search service. Provisioning is an intermediate state that occurs while service capacity is being established. After capacity is set up, provisioningState changes to either 'Succeeded' or 'Failed'. Client applications can poll provisioning status (the recommended polling interval is from 30 seconds to one minute) by using the Get Search Service operation to see when an operation is completed. If you are using the free service, this value tends to come back as 'Succeeded' directly in the call to Create search service. This is because the free service uses capacity that is already set up.
  /// [publicNetworkAccess] This value can be set to 'Enabled' to avoid breaking changes on existing customer resources and templates. If set to 'Disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  /// [replicaCount] The number of replicas in the search service. If specified, it must be a value between 1 and 12 inclusive for standard SKUs or between 1 and 3 inclusive for basic SKU.
  /// [semanticSearch] Sets options that control the availability of semantic search. This configuration is only possible for certain Azure AI Search SKUs in certain locations.
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
    required this.azureApiVersion,
    this.computeType,
    this.dataExfiltrationProtections,
    this.disableLocalAuth,
    required this.eTag,
    this.encryptionWithCmk,
    this.endpoint,
    this.hostingMode,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    this.networkRuleSet,
    this.partitionCount,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.replicaCount,
    this.semanticSearch,
    required this.serviceUpgradedAt,
    required this.sharedPrivateLinkResources,
    this.sku,
    required this.status,
    required this.statusDetails,
    required this.systemData,
    this.tags,
    required this.type,
    this.upgradeAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authOptions': ?authOptions == null ? null : authOptions!.toMap(),
      'azureApiVersion': azureApiVersion,
      'computeType': ?computeType,
      'dataExfiltrationProtections': ?dataExfiltrationProtections,
      'disableLocalAuth': ?disableLocalAuth,
      'eTag': eTag,
      'encryptionWithCmk': ?encryptionWithCmk == null ? null : encryptionWithCmk!.toMap(),
      'endpoint': ?endpoint,
      'hostingMode': ?hostingMode,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'networkRuleSet': ?networkRuleSet == null ? null : networkRuleSet!.toMap(),
      'partitionCount': ?partitionCount,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'replicaCount': ?replicaCount,
      'semanticSearch': ?semanticSearch,
      'serviceUpgradedAt': serviceUpgradedAt,
      'sharedPrivateLinkResources': pulumi.Input.encodeList<SharedPrivateLinkResourceResponse, Map<String, dynamic>>(sharedPrivateLinkResources, (value) => value.toMap()),
      'sku': ?sku == null ? null : sku!.toMap(),
      'status': status,
      'statusDetails': statusDetails,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'upgradeAvailable': ?upgradeAvailable,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      authOptions: map['authOptions'] == null ? null : DataPlaneAuthOptionsResponse.fromMap((map['authOptions']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      computeType: map['computeType'] == null ? null : map['computeType']! as String,
      dataExfiltrationProtections: map['dataExfiltrationProtections'] == null ? null : (map['dataExfiltrationProtections']! as List).cast<String>(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth']! as bool,
      eTag: map['eTag'] as String,
      encryptionWithCmk: map['encryptionWithCmk'] == null ? null : EncryptionWithCmkResponse.fromMap((map['encryptionWithCmk']! as Map).cast<String, dynamic>()),
      endpoint: map['endpoint'] == null ? null : map['endpoint']! as String,
      hostingMode: map['hostingMode'] == null ? null : map['hostingMode']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      networkRuleSet: map['networkRuleSet'] == null ? null : NetworkRuleSetResponse.fromMap((map['networkRuleSet']! as Map).cast<String, dynamic>()),
      partitionCount: map['partitionCount'] == null ? null : map['partitionCount']! as int,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess']! as String,
      replicaCount: map['replicaCount'] == null ? null : map['replicaCount']! as int,
      semanticSearch: map['semanticSearch'] == null ? null : map['semanticSearch']! as String,
      serviceUpgradedAt: map['serviceUpgradedAt'] as String,
      sharedPrivateLinkResources: pulumi.Input.decodeList<SharedPrivateLinkResourceResponse>(map['sharedPrivateLinkResources'], (value) => SharedPrivateLinkResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      statusDetails: map['statusDetails'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      upgradeAvailable: map['upgradeAvailable'] == null ? null : map['upgradeAvailable']! as String,
    );
  }
}

