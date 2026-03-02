// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_identity.dart';
import 'cluster_language_extension.dart';
import 'cluster_optimized_auto_scale.dart';
import 'cluster_sku.dart';
import 'cluster_virtual_network_configuration.dart';

/// {@template pulumi_kusto_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_kusto_cluster_cluster_args_doc}
class ClusterArgs {
  /// List of allowed FQDNs (Fully Qualified Domain Name) for egress from Cluster.
  final pulumi.Input<List<String>>? allowedFqdns;
  /// The list of ips in the format of CIDR allowed to connect to the cluster.
  final pulumi.Input<List<String>>? allowedIpRanges;
  /// Specifies if the cluster could be automatically stopped (due to lack of data or no activity for many days). Defaults to `true`.
  final pulumi.Input<bool>? autoStopEnabled;
  /// Specifies if the cluster's disks are encrypted. Defaults to `false`.
  final pulumi.Input<bool>? diskEncryptionEnabled;
  /// Is the cluster's double encryption enabled? Changing this forces a new resource to be created.
  final pulumi.Input<bool>? doubleEncryptionEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<ClusterIdentity>? identity;
  /// A `language_extension` block as defined below.
  final pulumi.Input<List<ClusterLanguageExtension>>? languageExtension;
  final pulumi.Input<List<ClusterLanguageExtension>>? languageExtensions;
  /// The location where the Kusto Cluster should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Kusto Cluster to create. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// An `optimized_auto_scale` block as defined below.
  final pulumi.Input<ClusterOptimizedAutoScale>? optimizedAutoScale;
  /// Whether to restrict outbound network access. Defaults to `false`.
  final pulumi.Input<bool>? outboundNetworkAccessRestricted;
  /// Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6). Defaults to `IPv4`.
  final pulumi.Input<String>? publicIpType;
  /// Is the public network access enabled? Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Specifies if the purge operations are enabled. Defaults to `false`.
  final pulumi.Input<bool>? purgeEnabled;
  /// Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `sku` block as defined below.
  final pulumi.Input<ClusterSku> sku;
  /// Specifies if the streaming ingest is enabled. Defaults to `false`.
  final pulumi.Input<bool>? streamingIngestionEnabled;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies a list of tenant IDs that are trusted by the cluster. Default setting trusts all other tenants. Use `trusted_external_tenants = ["*"]` to explicitly allow all other tenants, `trusted_external_tenants = ["MyTenantOnly"]` for only your tenant or `trusted_external_tenants = ["<tenantId1>", "<tenantIdx>"]` to allow specific other tenants.
  ///
  /// > **Note:** In v3.0 of `azurerm` a new or updated Kusto Cluster will only allow your own tenant by default. Explicit configuration of this setting will change from `trusted_external_tenants = ["MyTenantOnly"]` to `trusted_external_tenants = []`.
  final pulumi.Input<List<String>>? trustedExternalTenants;
  final pulumi.Input<ClusterVirtualNetworkConfiguration>? virtualNetworkConfiguration;
  /// Specifies a list of Availability Zones in which this Kusto Cluster should be located. Changing this forces a new Kusto Cluster to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ClusterArgs].
  /// [allowedFqdns] List of allowed FQDNs (Fully Qualified Domain Name) for egress from Cluster.
  /// [allowedIpRanges] The list of ips in the format of CIDR allowed to connect to the cluster.
  /// [autoStopEnabled] Specifies if the cluster could be automatically stopped (due to lack of data or no activity for many days). Defaults to `true`.
  /// [diskEncryptionEnabled] Specifies if the cluster's disks are encrypted. Defaults to `false`.
  /// [doubleEncryptionEnabled] Is the cluster's double encryption enabled? Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [languageExtension] A `language_extension` block as defined below.
  /// [languageExtensions] Optional.
  /// [location] The location where the Kusto Cluster should be created. Changing this forces a new resource to be created.
  /// [name] The name of the Kusto Cluster to create. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created.
  /// [optimizedAutoScale] An `optimized_auto_scale` block as defined below.
  /// [outboundNetworkAccessRestricted] Whether to restrict outbound network access. Defaults to `false`.
  /// [publicIpType] Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6). Defaults to `IPv4`.
  /// [publicNetworkAccessEnabled] Is the public network access enabled? Defaults to `true`.
  /// [purgeEnabled] Specifies if the purge operations are enabled. Defaults to `false`.
  /// [resourceGroupName] Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [streamingIngestionEnabled] Specifies if the streaming ingest is enabled. Defaults to `false`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trustedExternalTenants] Specifies a list of tenant IDs that are trusted by the cluster. Default setting trusts all other tenants. Use `trusted_external_tenants = ["*"]` to explicitly allow all other tenants, `trusted_external_tenants = ["MyTenantOnly"]` for only your tenant or `trusted_external_tenants = ["<tenantId1>", "<tenantIdx>"]` to allow specific other tenants.
  /// [virtualNetworkConfiguration] Optional.
  /// [zones] Specifies a list of Availability Zones in which this Kusto Cluster should be located. Changing this forces a new Kusto Cluster to be created.
  ClusterArgs({
    this.allowedFqdns,
    this.allowedIpRanges,
    this.autoStopEnabled,
    this.diskEncryptionEnabled,
    this.doubleEncryptionEnabled,
    this.identity,
    this.languageExtension,
    this.languageExtensions,
    this.location,
    this.name,
    this.optimizedAutoScale,
    this.outboundNetworkAccessRestricted,
    this.publicIpType,
    this.publicNetworkAccessEnabled,
    this.purgeEnabled,
    required this.resourceGroupName,
    required this.sku,
    this.streamingIngestionEnabled,
    this.tags,
    this.trustedExternalTenants,
    this.virtualNetworkConfiguration,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFqdns': ?allowedFqdns,
      'allowedIpRanges': ?allowedIpRanges,
      'autoStopEnabled': ?autoStopEnabled,
      'diskEncryptionEnabled': ?diskEncryptionEnabled,
      'doubleEncryptionEnabled': ?doubleEncryptionEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<ClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'languageExtension': ?pulumi.Input.mapOptionalInputValue<List<ClusterLanguageExtension>, List<Map<String, dynamic>>>(languageExtension, (value) => pulumi.Input.encodeList<ClusterLanguageExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'languageExtensions': ?pulumi.Input.mapOptionalInputValue<List<ClusterLanguageExtension>, List<Map<String, dynamic>>>(languageExtensions, (value) => pulumi.Input.encodeList<ClusterLanguageExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'optimizedAutoScale': ?pulumi.Input.mapOptionalInputValue<ClusterOptimizedAutoScale, Map<String, dynamic>>(optimizedAutoScale, (value) => value.toMap()),
      'outboundNetworkAccessRestricted': ?outboundNetworkAccessRestricted,
      'publicIpType': ?publicIpType,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'purgeEnabled': ?purgeEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<ClusterSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'streamingIngestionEnabled': ?streamingIngestionEnabled,
      'tags': ?tags,
      'trustedExternalTenants': ?trustedExternalTenants,
      'virtualNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<ClusterVirtualNetworkConfiguration, Map<String, dynamic>>(virtualNetworkConfiguration, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      allowedFqdns: map['allowedFqdns'] == null ? null : ((map['allowedFqdns']! as List).cast<String>()).input(),
      allowedIpRanges: map['allowedIpRanges'] == null ? null : ((map['allowedIpRanges']! as List).cast<String>()).input(),
      autoStopEnabled: map['autoStopEnabled'] == null ? null : (map['autoStopEnabled']! as bool).input(),
      diskEncryptionEnabled: map['diskEncryptionEnabled'] == null ? null : (map['diskEncryptionEnabled']! as bool).input(),
      doubleEncryptionEnabled: map['doubleEncryptionEnabled'] == null ? null : (map['doubleEncryptionEnabled']! as bool).input(),
      identity: map['identity'] == null ? null : (ClusterIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      languageExtension: map['languageExtension'] == null ? null : (pulumi.Input.decodeList<ClusterLanguageExtension>(map['languageExtension']!, (value) => ClusterLanguageExtension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      languageExtensions: map['languageExtensions'] == null ? null : (pulumi.Input.decodeList<ClusterLanguageExtension>(map['languageExtensions']!, (value) => ClusterLanguageExtension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      optimizedAutoScale: map['optimizedAutoScale'] == null ? null : (ClusterOptimizedAutoScale.fromMap((map['optimizedAutoScale']! as Map).cast<String, dynamic>())).input(),
      outboundNetworkAccessRestricted: map['outboundNetworkAccessRestricted'] == null ? null : (map['outboundNetworkAccessRestricted']! as bool).input(),
      publicIpType: map['publicIpType'] == null ? null : (map['publicIpType']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      purgeEnabled: map['purgeEnabled'] == null ? null : (map['purgeEnabled']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (ClusterSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      streamingIngestionEnabled: map['streamingIngestionEnabled'] == null ? null : (map['streamingIngestionEnabled']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      trustedExternalTenants: map['trustedExternalTenants'] == null ? null : ((map['trustedExternalTenants']! as List).cast<String>()).input(),
      virtualNetworkConfiguration: map['virtualNetworkConfiguration'] == null ? null : (ClusterVirtualNetworkConfiguration.fromMap((map['virtualNetworkConfiguration']! as Map).cast<String, dynamic>())).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

