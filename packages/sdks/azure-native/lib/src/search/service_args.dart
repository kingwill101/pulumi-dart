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
  /// The number of partitions in the dedicated search service; if specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are only valid for standard SKUs. For 'standard3' services with hostingMode set to 'highDensity', the allowed values are between 1 and 3.
  final pulumi.Input<int>? partitionCount;
  /// This value can be set to 'Enabled' to avoid breaking changes on existing customer resources and templates. If set to 'Disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The number of replicas in the dedicated search service. If specified, it must be a value between 1 and 12 inclusive for standard SKUs or between 1 and 3 inclusive for basic SKU.
  final pulumi.Input<int>? replicaCount;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure AI Search service associated with the specified resource group.
  final pulumi.Input<String>? searchServiceName;
  /// Specifies the availability and billing plan for semantic search on the Azure AI Search service. This configuration is only available for certain pricing tiers in certain regions.
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
  /// [partitionCount] The number of partitions in the dedicated search service; if specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are only valid for standard SKUs. For 'standard3' services with hostingMode set to 'highDensity', the allowed values are between 1 and 3.
  /// [publicNetworkAccess] This value can be set to 'Enabled' to avoid breaking changes on existing customer resources and templates. If set to 'Disabled', traffic over public interface is not allowed, and private endpoint connections would be the exclusive access method.
  /// [replicaCount] The number of replicas in the dedicated search service. If specified, it must be a value between 1 and 12 inclusive for standard SKUs or between 1 and 3 inclusive for basic SKU.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [searchServiceName] The name of the Azure AI Search service associated with the specified resource group.
  /// [semanticSearch] Specifies the availability and billing plan for semantic search on the Azure AI Search service. This configuration is only available for certain pricing tiers in certain regions.
  /// [sku] The SKU of the search service, which determines price tier and capacity limits. This property is required when creating a new search service.
  /// [tags] Resource tags.
  /// [upgradeAvailable] Indicates if the search service has an upgrade available.
  const ServiceArgs({
    this.authOptions,
    this.computeType,
    this.dataExfiltrationProtections,
    this.disableLocalAuth,
    this.encryptionWithCmk,
    this.endpoint,
    this.hostingMode,
    this.identity,
    this.location,
    this.networkRuleSet,
    this.partitionCount,
    this.publicNetworkAccess,
    this.replicaCount,
    required this.resourceGroupName,
    this.searchServiceName,
    this.semanticSearch,
    this.sku,
    this.tags,
    this.upgradeAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authOptions': ?pulumi.Input.mapOptionalInputValue<DataPlaneAuthOptions, Map<String, dynamic>>(authOptions, (value) => value.toMap()),
      'computeType': ?computeType,
      'dataExfiltrationProtections': ?dataExfiltrationProtections,
      'disableLocalAuth': ?disableLocalAuth,
      'encryptionWithCmk': ?pulumi.Input.mapOptionalInputValue<EncryptionWithCmk, Map<String, dynamic>>(encryptionWithCmk, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'hostingMode': ?pulumi.Input.mapOptionalInputValue<HostingMode, String>(hostingMode, (value) => value.wireValue),
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
      authOptions: (() { final guardedValue = map['authOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataPlaneAuthOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computeType: (() { final guardedValue = map['computeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataExfiltrationProtections: (() { final guardedValue = map['dataExfiltrationProtections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionWithCmk: (() { final guardedValue = map['encryptionWithCmk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionWithCmk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostingMode: (() { final guardedValue = map['hostingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostingMode.fromValue(guardedValue as String)); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkRuleSet: (() { final guardedValue = map['networkRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkRuleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partitionCount: (() { final guardedValue = map['partitionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      searchServiceName: (() { final guardedValue = map['searchServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      semanticSearch: (() { final guardedValue = map['semanticSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      upgradeAvailable: (() { final guardedValue = map['upgradeAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
