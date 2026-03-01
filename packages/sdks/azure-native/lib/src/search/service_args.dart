// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_plane_auth_options.dart';
import 'encryption_with_cmk.dart';
import 'hosting_mode.dart';
import 'identity.dart';
import 'network_rule_set.dart';
import 'sku.dart';

/// {@template pulumi_search_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_search_service_args_doc}
class ServiceArgs {
  /// Defines the options for how the data plane API of a search service authenticates requests. This cannot be set if 'disableLocalAuth' is set to true.
  final pulumi.Input<DataPlaneAuthOptions>? authOptions;
  /// Configure this property to support the search service using either the Default Compute or Azure Confidential Compute.
  final pulumi.Input<String>? computeType;
  /// A list of data exfiltration scenarios that are explicitly disallowed for the search service. Currently, the only supported value is 'All' to disable all possible data export scenarios with more fine grained controls planned for the future.
  final pulumi.Input<List<String>>? dataExfiltrationProtections;
  /// When set to true, calls to the search service will not be permitted to utilize API keys for authentication. This cannot be set to true if 'dataPlaneAuthOptions' are defined.
  final pulumi.Input<bool>? disableLocalAuth;
  /// Specifies any policy regarding encryption of resources (such as indexes) using customer manager keys within a search service.
  final pulumi.Input<EncryptionWithCmk>? encryptionWithCmk;
  /// The endpoint of the Azure AI Search service.
  final pulumi.Input<String>? endpoint;
  /// Applicable only for the standard3 SKU. You can set this property to enable up to 3 high density partitions that allow up to 1000 indexes, which is much higher than the maximum indexes allowed for any other SKU. For the standard3 SKU, the value is either 'Default' or 'HighDensity'. For all other SKUs, this value must be 'Default'.
  final pulumi.Input<HostingMode>? hostingMode;
  /// The identity of the resource.
  final pulumi.Input<Identity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Network specific rules that determine how the Azure AI Search service may be reached.
  final pulumi.Input<NetworkRuleSet>? networkRuleSet;
  /// The number of partitions in the search service; if specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are only valid for standard SKUs. For 'standard3' services with hostingMode set to 'highDensity', the allowed values are between 1 and 3.
  final pulumi.Input<int>? partitionCount;
  /// This value can be set to 'Enabled' to avoid breaking changes on existing customer resources and templates. If set to 'Disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The number of replicas in the search service. If specified, it must be a value between 1 and 12 inclusive for standard SKUs or between 1 and 3 inclusive for basic SKU.
  final pulumi.Input<int>? replicaCount;
  /// The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure AI Search service to create or update. Search service names must only contain lowercase letters, digits or dashes, cannot use dash as the first two or last one characters, cannot contain consecutive dashes, and must be between 2 and 60 characters in length. Search service names must be unique since they are part of the service URI (https://<name>.search.windows.net). You cannot change the service name after the service is created.
  final pulumi.Input<String>? searchServiceName;
  /// Sets options that control the availability of semantic search. This configuration is only possible for certain Azure AI Search SKUs in certain locations.
  final pulumi.Input<String>? semanticSearch;
  /// The SKU of the search service, which determines price tier and capacity limits. This property is required when creating a new search service.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Indicates if the search service has an upgrade available.
  final pulumi.Input<String>? upgradeAvailable;

  /// Creates a new [ServiceArgs].
  /// [authOptions] Defines the options for how the data plane API of a search service authenticates requests. This cannot be set if 'disableLocalAuth' is set to true.
  /// [computeType] Configure this property to support the search service using either the Default Compute or Azure Confidential Compute.
  /// [dataExfiltrationProtections] A list of data exfiltration scenarios that are explicitly disallowed for the search service. Currently, the only supported value is 'All' to disable all possible data export scenarios with more fine grained controls planned for the future.
  /// [disableLocalAuth] When set to true, calls to the search service will not be permitted to utilize API keys for authentication. This cannot be set to true if 'dataPlaneAuthOptions' are defined.
  /// [encryptionWithCmk] Specifies any policy regarding encryption of resources (such as indexes) using customer manager keys within a search service.
  /// [endpoint] The endpoint of the Azure AI Search service.
  /// [hostingMode] Applicable only for the standard3 SKU. You can set this property to enable up to 3 high density partitions that allow up to 1000 indexes, which is much higher than the maximum indexes allowed for any other SKU. For the standard3 SKU, the value is either 'Default' or 'HighDensity'. For all other SKUs, this value must be 'Default'.
  /// [identity] The identity of the resource.
  /// [location] The geo-location where the resource lives
  /// [networkRuleSet] Network specific rules that determine how the Azure AI Search service may be reached.
  /// [partitionCount] The number of partitions in the search service; if specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are only valid for standard SKUs. For 'standard3' services with hostingMode set to 'highDensity', the allowed values are between 1 and 3.
  /// [publicNetworkAccess] This value can be set to 'Enabled' to avoid breaking changes on existing customer resources and templates. If set to 'Disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  /// [replicaCount] The number of replicas in the search service. If specified, it must be a value between 1 and 12 inclusive for standard SKUs or between 1 and 3 inclusive for basic SKU.
  /// [resourceGroupName] The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [searchServiceName] The name of the Azure AI Search service to create or update. Search service names must only contain lowercase letters, digits or dashes, cannot use dash as the first two or last one characters, cannot contain consecutive dashes, and must be between 2 and 60 characters in length. Search service names must be unique since they are part of the service URI (https://<name>.search.windows.net). You cannot change the service name after the service is created.
  /// [semanticSearch] Sets options that control the availability of semantic search. This configuration is only possible for certain Azure AI Search SKUs in certain locations.
  /// [sku] The SKU of the search service, which determines price tier and capacity limits. This property is required when creating a new search service.
  /// [tags] Resource tags.
  /// [upgradeAvailable] Indicates if the search service has an upgrade available.
  ServiceArgs({
    pulumi.Output<DataPlaneAuthOptions>? authOptions,
    pulumi.Output<String>? computeType,
    pulumi.Output<List<String>>? dataExfiltrationProtections,
    pulumi.Output<bool>? disableLocalAuth,
    pulumi.Output<EncryptionWithCmk>? encryptionWithCmk,
    pulumi.Output<String>? endpoint,
    pulumi.Output<HostingMode>? hostingMode,
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<NetworkRuleSet>? networkRuleSet,
    pulumi.Output<int>? partitionCount,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<int>? replicaCount,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? searchServiceName,
    pulumi.Output<String>? semanticSearch,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? upgradeAvailable,
  }) :
      authOptions = pulumi.Input.asOptionalInput<DataPlaneAuthOptions>(authOptions),
      computeType = pulumi.Input.asOptionalInput<String>(computeType),
      dataExfiltrationProtections = pulumi.Input.asOptionalInput<List<String>>(dataExfiltrationProtections),
      disableLocalAuth = pulumi.Input.asOptionalInput<bool>(disableLocalAuth),
      encryptionWithCmk = pulumi.Input.asOptionalInput<EncryptionWithCmk>(encryptionWithCmk),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      hostingMode = pulumi.Input.asOptionalInput<HostingMode>(hostingMode),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkRuleSet = pulumi.Input.asOptionalInput<NetworkRuleSet>(networkRuleSet),
      partitionCount = pulumi.Input.asOptionalInput<int>(partitionCount),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      replicaCount = pulumi.Input.asOptionalInput<int>(replicaCount),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      searchServiceName = pulumi.Input.asOptionalInput<String>(searchServiceName),
      semanticSearch = pulumi.Input.asOptionalInput<String>(semanticSearch),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      upgradeAvailable = pulumi.Input.asOptionalInput<String>(upgradeAvailable);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authOptions': ?pulumi.Input.mapOptionalInputValue<DataPlaneAuthOptions, Map<String, dynamic>>(authOptions, (value) => value.toMap()),
      'computeType': ?computeType,
      'dataExfiltrationProtections': ?dataExfiltrationProtections,
      'disableLocalAuth': ?disableLocalAuth,
      'encryptionWithCmk': ?pulumi.Input.mapOptionalInputValue<EncryptionWithCmk, Map<String, dynamic>>(encryptionWithCmk, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'hostingMode': ?pulumi.Input.mapOptionalInputValue<HostingMode, String>(hostingMode, (value) => value.value),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'networkRuleSet': ?pulumi.Input.mapOptionalInputValue<NetworkRuleSet, Map<String, dynamic>>(networkRuleSet, (value) => value.toMap()),
      'partitionCount': ?partitionCount,
      'publicNetworkAccess': ?publicNetworkAccess,
      'replicaCount': ?replicaCount,
      'resourceGroupName': resourceGroupName,
      'searchServiceName': ?searchServiceName,
      'semanticSearch': ?semanticSearch,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'upgradeAvailable': ?upgradeAvailable,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      authOptions: map['authOptions'] == null ? null : pulumi.Output.create<DataPlaneAuthOptions>(DataPlaneAuthOptions.fromMap((map['authOptions'] as Map).cast<String, dynamic>())),
      computeType: map['computeType'] == null ? null : pulumi.Output.create<String>(map['computeType'] as String),
      dataExfiltrationProtections: map['dataExfiltrationProtections'] == null ? null : pulumi.Output.create<List<String>>((map['dataExfiltrationProtections'] as List).cast<String>()),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : pulumi.Output.create<bool>(map['disableLocalAuth'] as bool),
      encryptionWithCmk: map['encryptionWithCmk'] == null ? null : pulumi.Output.create<EncryptionWithCmk>(EncryptionWithCmk.fromMap((map['encryptionWithCmk'] as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      hostingMode: map['hostingMode'] == null ? null : pulumi.Output.create<HostingMode>(HostingMode.fromValue(map['hostingMode'] as String)),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkRuleSet: map['networkRuleSet'] == null ? null : pulumi.Output.create<NetworkRuleSet>(NetworkRuleSet.fromMap((map['networkRuleSet'] as Map).cast<String, dynamic>())),
      partitionCount: map['partitionCount'] == null ? null : pulumi.Output.create<int>(map['partitionCount'] as int),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      replicaCount: map['replicaCount'] == null ? null : pulumi.Output.create<int>(map['replicaCount'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      searchServiceName: map['searchServiceName'] == null ? null : pulumi.Output.create<String>(map['searchServiceName'] as String),
      semanticSearch: map['semanticSearch'] == null ? null : pulumi.Output.create<String>(map['semanticSearch'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      upgradeAvailable: map['upgradeAvailable'] == null ? null : pulumi.Output.create<String>(map['upgradeAvailable'] as String),
    );
  }
}

