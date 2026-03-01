// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_identity.dart';
import 'cluster_language_extension.dart';
import 'cluster_optimized_auto_scale.dart';
import 'cluster_sku.dart';
import 'cluster_virtual_network_configuration.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// List of allowed FQDNs (Fully Qualified Domain Name) for egress from Cluster.
  final pulumi.Input<List<String>>? allowedFqdns;
  /// The list of ips in the format of CIDR allowed to connect to the cluster.
  final pulumi.Input<List<String>>? allowedIpRanges;
  /// Specifies if the cluster could be automatically stopped (due to lack of data or no activity for many days). Defaults to `true`.
  final pulumi.Input<bool>? autoStopEnabled;
  /// The Kusto Cluster URI to be used for data ingestion.
  final pulumi.Input<String>? dataIngestionUri;
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
  final pulumi.Input<String>? resourceGroupName;
  /// A `sku` block as defined below.
  final pulumi.Input<ClusterSku>? sku;
  /// Specifies if the streaming ingest is enabled. Defaults to `false`.
  final pulumi.Input<bool>? streamingIngestionEnabled;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies a list of tenant IDs that are trusted by the cluster. Default setting trusts all other tenants. Use `trusted_external_tenants = ["*"]` to explicitly allow all other tenants, `trusted_external_tenants = ["MyTenantOnly"]` for only your tenant or `trusted_external_tenants = ["<tenantId1>", "<tenantIdx>"]` to allow specific other tenants.
  ///
  /// > **Note:** In v3.0 of `azurerm` a new or updated Kusto Cluster will only allow your own tenant by default. Explicit configuration of this setting will change from `trusted_external_tenants = ["MyTenantOnly"]` to `trusted_external_tenants = []`.
  final pulumi.Input<List<String>>? trustedExternalTenants;
  /// The FQDN of the Azure Kusto Cluster.
  final pulumi.Input<String>? uri;
  final pulumi.Input<ClusterVirtualNetworkConfiguration>? virtualNetworkConfiguration;
  /// Specifies a list of Availability Zones in which this Kusto Cluster should be located. Changing this forces a new Kusto Cluster to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ClusterState].
  /// [allowedFqdns] List of allowed FQDNs (Fully Qualified Domain Name) for egress from Cluster.
  /// [allowedIpRanges] The list of ips in the format of CIDR allowed to connect to the cluster.
  /// [autoStopEnabled] Specifies if the cluster could be automatically stopped (due to lack of data or no activity for many days). Defaults to `true`.
  /// [dataIngestionUri] The Kusto Cluster URI to be used for data ingestion.
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
  /// [uri] The FQDN of the Azure Kusto Cluster.
  /// [virtualNetworkConfiguration] Optional.
  /// [zones] Specifies a list of Availability Zones in which this Kusto Cluster should be located. Changing this forces a new Kusto Cluster to be created.
  ClusterState({
    pulumi.Output<List<String>>? allowedFqdns,
    pulumi.Output<List<String>>? allowedIpRanges,
    pulumi.Output<bool>? autoStopEnabled,
    pulumi.Output<String>? dataIngestionUri,
    pulumi.Output<bool>? diskEncryptionEnabled,
    pulumi.Output<bool>? doubleEncryptionEnabled,
    pulumi.Output<ClusterIdentity>? identity,
    pulumi.Output<List<ClusterLanguageExtension>>? languageExtension,
    pulumi.Output<List<ClusterLanguageExtension>>? languageExtensions,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<ClusterOptimizedAutoScale>? optimizedAutoScale,
    pulumi.Output<bool>? outboundNetworkAccessRestricted,
    pulumi.Output<String>? publicIpType,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<bool>? purgeEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<ClusterSku>? sku,
    pulumi.Output<bool>? streamingIngestionEnabled,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? trustedExternalTenants,
    pulumi.Output<String>? uri,
    pulumi.Output<ClusterVirtualNetworkConfiguration>? virtualNetworkConfiguration,
    pulumi.Output<List<String>>? zones,
  }) :
      allowedFqdns = pulumi.Input.asOptionalInput<List<String>>(allowedFqdns),
      allowedIpRanges = pulumi.Input.asOptionalInput<List<String>>(allowedIpRanges),
      autoStopEnabled = pulumi.Input.asOptionalInput<bool>(autoStopEnabled),
      dataIngestionUri = pulumi.Input.asOptionalInput<String>(dataIngestionUri),
      diskEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(diskEncryptionEnabled),
      doubleEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(doubleEncryptionEnabled),
      identity = pulumi.Input.asOptionalInput<ClusterIdentity>(identity),
      languageExtension = pulumi.Input.asOptionalInput<List<ClusterLanguageExtension>>(languageExtension),
      languageExtensions = pulumi.Input.asOptionalInput<List<ClusterLanguageExtension>>(languageExtensions),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      optimizedAutoScale = pulumi.Input.asOptionalInput<ClusterOptimizedAutoScale>(optimizedAutoScale),
      outboundNetworkAccessRestricted = pulumi.Input.asOptionalInput<bool>(outboundNetworkAccessRestricted),
      publicIpType = pulumi.Input.asOptionalInput<String>(publicIpType),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      purgeEnabled = pulumi.Input.asOptionalInput<bool>(purgeEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<ClusterSku>(sku),
      streamingIngestionEnabled = pulumi.Input.asOptionalInput<bool>(streamingIngestionEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trustedExternalTenants = pulumi.Input.asOptionalInput<List<String>>(trustedExternalTenants),
      uri = pulumi.Input.asOptionalInput<String>(uri),
      virtualNetworkConfiguration = pulumi.Input.asOptionalInput<ClusterVirtualNetworkConfiguration>(virtualNetworkConfiguration),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFqdns': ?allowedFqdns,
      'allowedIpRanges': ?allowedIpRanges,
      'autoStopEnabled': ?autoStopEnabled,
      'dataIngestionUri': ?dataIngestionUri,
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
      'resourceGroupName': ?resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ClusterSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'streamingIngestionEnabled': ?streamingIngestionEnabled,
      'tags': ?tags,
      'trustedExternalTenants': ?trustedExternalTenants,
      'uri': ?uri,
      'virtualNetworkConfiguration': ?pulumi.Input.mapOptionalInputValue<ClusterVirtualNetworkConfiguration, Map<String, dynamic>>(virtualNetworkConfiguration, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      allowedFqdns: map['allowedFqdns'] == null ? null : pulumi.Output.create<List<String>>((map['allowedFqdns'] as List).cast<String>()),
      allowedIpRanges: map['allowedIpRanges'] == null ? null : pulumi.Output.create<List<String>>((map['allowedIpRanges'] as List).cast<String>()),
      autoStopEnabled: map['autoStopEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoStopEnabled'] as bool),
      dataIngestionUri: map['dataIngestionUri'] == null ? null : pulumi.Output.create<String>(map['dataIngestionUri'] as String),
      diskEncryptionEnabled: map['diskEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['diskEncryptionEnabled'] as bool),
      doubleEncryptionEnabled: map['doubleEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['doubleEncryptionEnabled'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<ClusterIdentity>(ClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      languageExtension: map['languageExtension'] == null ? null : pulumi.Output.create<List<ClusterLanguageExtension>>(pulumi.Input.decodeList<ClusterLanguageExtension>(map['languageExtension'], (value) => ClusterLanguageExtension.fromMap((value as Map).cast<String, dynamic>()))),
      languageExtensions: map['languageExtensions'] == null ? null : pulumi.Output.create<List<ClusterLanguageExtension>>(pulumi.Input.decodeList<ClusterLanguageExtension>(map['languageExtensions'], (value) => ClusterLanguageExtension.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      optimizedAutoScale: map['optimizedAutoScale'] == null ? null : pulumi.Output.create<ClusterOptimizedAutoScale>(ClusterOptimizedAutoScale.fromMap((map['optimizedAutoScale'] as Map).cast<String, dynamic>())),
      outboundNetworkAccessRestricted: map['outboundNetworkAccessRestricted'] == null ? null : pulumi.Output.create<bool>(map['outboundNetworkAccessRestricted'] as bool),
      publicIpType: map['publicIpType'] == null ? null : pulumi.Output.create<String>(map['publicIpType'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      purgeEnabled: map['purgeEnabled'] == null ? null : pulumi.Output.create<bool>(map['purgeEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<ClusterSku>(ClusterSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      streamingIngestionEnabled: map['streamingIngestionEnabled'] == null ? null : pulumi.Output.create<bool>(map['streamingIngestionEnabled'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trustedExternalTenants: map['trustedExternalTenants'] == null ? null : pulumi.Output.create<List<String>>((map['trustedExternalTenants'] as List).cast<String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
      virtualNetworkConfiguration: map['virtualNetworkConfiguration'] == null ? null : pulumi.Output.create<ClusterVirtualNetworkConfiguration>(ClusterVirtualNetworkConfiguration.fromMap((map['virtualNetworkConfiguration'] as Map).cast<String, dynamic>())),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

