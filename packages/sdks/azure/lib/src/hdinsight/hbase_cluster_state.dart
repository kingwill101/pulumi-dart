// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hbase_cluster_component_version.dart';
import 'hbase_cluster_compute_isolation.dart';
import 'hbase_cluster_disk_encryption.dart';
import 'hbase_cluster_extension.dart';
import 'hbase_cluster_gateway.dart';
import 'hbase_cluster_metastores.dart';
import 'hbase_cluster_monitor.dart';
import 'hbase_cluster_network.dart';
import 'hbase_cluster_private_link_configuration.dart';
import 'hbase_cluster_roles.dart';
import 'hbase_cluster_security_profile.dart';
import 'hbase_cluster_storage_account.dart';
import 'hbase_cluster_storage_account_gen2.dart';

/// Input properties used for looking up and filtering HBaseCluster resources.
class HBaseClusterState {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterVersion;
  /// A `component_version` block as defined below.
  final pulumi.Input<HBaseClusterComponentVersion>? componentVersion;
  /// A `compute_isolation` block as defined below.
  final pulumi.Input<HBaseClusterComputeIsolation>? computeIsolation;
  /// One or more `disk_encryption` block as defined below.
  final pulumi.Input<List<HBaseClusterDiskEncryption>>? diskEncryptions;
  /// An `extension` block as defined below.
  final pulumi.Input<HBaseClusterExtension>? extension;
  /// A `gateway` block as defined below.
  final pulumi.Input<HBaseClusterGateway>? gateway;
  /// The HTTPS Connectivity Endpoint for this HDInsight HBase Cluster.
  final pulumi.Input<String>? httpsEndpoint;
  /// Specifies the Azure Region which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `metastores` block as defined below.
  final pulumi.Input<HBaseClusterMetastores>? metastores;
  /// A `monitor` block as defined below.
  final pulumi.Input<HBaseClusterMonitor>? monitor;
  /// Specifies the name for this HDInsight HBase Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network` block as defined below.
  final pulumi.Input<HBaseClusterNetwork>? network;
  /// A `private_link_configuration` block as defined below.
  final pulumi.Input<HBaseClusterPrivateLinkConfiguration>? privateLinkConfiguration;
  /// Specifies the name of the Resource Group in which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `roles` block as defined below.
  final pulumi.Input<HBaseClusterRoles>? roles;
  /// A `security_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HBaseClusterSecurityProfile>? securityProfile;
  /// The SSH Connectivity Endpoint for this HDInsight HBase Cluster.
  final pulumi.Input<String>? sshEndpoint;
  /// A `storage_account_gen2` block as defined below.
  final pulumi.Input<HBaseClusterStorageAccountGen2>? storageAccountGen2;
  /// One or more `storage_account` block as defined below.
  final pulumi.Input<List<HBaseClusterStorageAccount>>? storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight HBase Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Tier which should be used for this HDInsight HBase Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tier;
  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  final pulumi.Input<String>? tlsMinVersion;

  /// Creates a new [HBaseClusterState].
  /// [clusterVersion] Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  /// [componentVersion] A `component_version` block as defined below.
  /// [computeIsolation] A `compute_isolation` block as defined below.
  /// [diskEncryptions] One or more `disk_encryption` block as defined below.
  /// [extension] An `extension` block as defined below.
  /// [gateway] A `gateway` block as defined below.
  /// [httpsEndpoint] The HTTPS Connectivity Endpoint for this HDInsight HBase Cluster.
  /// [location] Specifies the Azure Region which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created.
  /// [metastores] A `metastores` block as defined below.
  /// [monitor] A `monitor` block as defined below.
  /// [name] Specifies the name for this HDInsight HBase Cluster. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below.
  /// [privateLinkConfiguration] A `private_link_configuration` block as defined below.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created.
  /// [roles] A `roles` block as defined below.
  /// [securityProfile] A `security_profile` block as defined below. Changing this forces a new resource to be created.
  /// [sshEndpoint] The SSH Connectivity Endpoint for this HDInsight HBase Cluster.
  /// [storageAccountGen2] A `storage_account_gen2` block as defined below.
  /// [storageAccounts] One or more `storage_account` block as defined below.
  /// [tags] A map of Tags which should be assigned to this HDInsight HBase Cluster.
  /// [tier] Specifies the Tier which should be used for this HDInsight HBase Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  /// [tlsMinVersion] The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  HBaseClusterState({
    this.clusterVersion,
    this.componentVersion,
    this.computeIsolation,
    this.diskEncryptions,
    this.extension,
    this.gateway,
    this.httpsEndpoint,
    this.location,
    this.metastores,
    this.monitor,
    this.name,
    this.network,
    this.privateLinkConfiguration,
    this.resourceGroupName,
    this.roles,
    this.securityProfile,
    this.sshEndpoint,
    this.storageAccountGen2,
    this.storageAccounts,
    this.tags,
    this.tier,
    this.tlsMinVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterVersion': ?clusterVersion,
      'componentVersion': ?pulumi.Input.mapOptionalInputValue<HBaseClusterComponentVersion, Map<String, dynamic>>(componentVersion, (value) => value.toMap()),
      'computeIsolation': ?pulumi.Input.mapOptionalInputValue<HBaseClusterComputeIsolation, Map<String, dynamic>>(computeIsolation, (value) => value.toMap()),
      'diskEncryptions': ?pulumi.Input.mapOptionalInputValue<List<HBaseClusterDiskEncryption>, List<Map<String, dynamic>>>(diskEncryptions, (value) => pulumi.Input.encodeList<HBaseClusterDiskEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extension': ?pulumi.Input.mapOptionalInputValue<HBaseClusterExtension, Map<String, dynamic>>(extension, (value) => value.toMap()),
      'gateway': ?pulumi.Input.mapOptionalInputValue<HBaseClusterGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'httpsEndpoint': ?httpsEndpoint,
      'location': ?location,
      'metastores': ?pulumi.Input.mapOptionalInputValue<HBaseClusterMetastores, Map<String, dynamic>>(metastores, (value) => value.toMap()),
      'monitor': ?pulumi.Input.mapOptionalInputValue<HBaseClusterMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<HBaseClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'privateLinkConfiguration': ?pulumi.Input.mapOptionalInputValue<HBaseClusterPrivateLinkConfiguration, Map<String, dynamic>>(privateLinkConfiguration, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'roles': ?pulumi.Input.mapOptionalInputValue<HBaseClusterRoles, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<HBaseClusterSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'sshEndpoint': ?sshEndpoint,
      'storageAccountGen2': ?pulumi.Input.mapOptionalInputValue<HBaseClusterStorageAccountGen2, Map<String, dynamic>>(storageAccountGen2, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<HBaseClusterStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<HBaseClusterStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tier': ?tier,
      'tlsMinVersion': ?tlsMinVersion,
    };
  }

  factory HBaseClusterState.fromMap(Map<String, dynamic> map) {
    return HBaseClusterState(
      clusterVersion: map['clusterVersion'] == null ? null : (map['clusterVersion']! as String).input(),
      componentVersion: map['componentVersion'] == null ? null : (HBaseClusterComponentVersion.fromMap((map['componentVersion']! as Map).cast<String, dynamic>())).input(),
      computeIsolation: map['computeIsolation'] == null ? null : (HBaseClusterComputeIsolation.fromMap((map['computeIsolation']! as Map).cast<String, dynamic>())).input(),
      diskEncryptions: map['diskEncryptions'] == null ? null : (pulumi.Input.decodeList<HBaseClusterDiskEncryption>(map['diskEncryptions']!, (value) => HBaseClusterDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      extension: map['extension'] == null ? null : (HBaseClusterExtension.fromMap((map['extension']! as Map).cast<String, dynamic>())).input(),
      gateway: map['gateway'] == null ? null : (HBaseClusterGateway.fromMap((map['gateway']! as Map).cast<String, dynamic>())).input(),
      httpsEndpoint: map['httpsEndpoint'] == null ? null : (map['httpsEndpoint']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      metastores: map['metastores'] == null ? null : (HBaseClusterMetastores.fromMap((map['metastores']! as Map).cast<String, dynamic>())).input(),
      monitor: map['monitor'] == null ? null : (HBaseClusterMonitor.fromMap((map['monitor']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (HBaseClusterNetwork.fromMap((map['network']! as Map).cast<String, dynamic>())).input(),
      privateLinkConfiguration: map['privateLinkConfiguration'] == null ? null : (HBaseClusterPrivateLinkConfiguration.fromMap((map['privateLinkConfiguration']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      roles: map['roles'] == null ? null : (HBaseClusterRoles.fromMap((map['roles']! as Map).cast<String, dynamic>())).input(),
      securityProfile: map['securityProfile'] == null ? null : (HBaseClusterSecurityProfile.fromMap((map['securityProfile']! as Map).cast<String, dynamic>())).input(),
      sshEndpoint: map['sshEndpoint'] == null ? null : (map['sshEndpoint']! as String).input(),
      storageAccountGen2: map['storageAccountGen2'] == null ? null : (HBaseClusterStorageAccountGen2.fromMap((map['storageAccountGen2']! as Map).cast<String, dynamic>())).input(),
      storageAccounts: map['storageAccounts'] == null ? null : (pulumi.Input.decodeList<HBaseClusterStorageAccount>(map['storageAccounts']!, (value) => HBaseClusterStorageAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
      tlsMinVersion: map['tlsMinVersion'] == null ? null : (map['tlsMinVersion']! as String).input(),
    );
  }
}

