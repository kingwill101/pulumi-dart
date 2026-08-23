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
  /// A `componentVersion` block as defined below.
  final pulumi.Input<HBaseClusterComponentVersion>? componentVersion;
  /// A `computeIsolation` block as defined below.
  final pulumi.Input<HBaseClusterComputeIsolation>? computeIsolation;
  /// One or more `diskEncryption` block as defined below.
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
  /// A `privateLinkConfiguration` block as defined below.
  final pulumi.Input<HBaseClusterPrivateLinkConfiguration>? privateLinkConfiguration;
  /// Specifies the name of the Resource Group in which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `roles` block as defined below.
  final pulumi.Input<HBaseClusterRoles>? roles;
  /// A `securityProfile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HBaseClusterSecurityProfile>? securityProfile;
  /// The SSH Connectivity Endpoint for this HDInsight HBase Cluster.
  final pulumi.Input<String>? sshEndpoint;
  /// A `storageAccountGen2` block as defined below.
  final pulumi.Input<HBaseClusterStorageAccountGen2>? storageAccountGen2;
  /// One or more `storageAccount` block as defined below.
  final pulumi.Input<List<HBaseClusterStorageAccount>>? storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight HBase Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Tier which should be used for this HDInsight HBase Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tier;
  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  final pulumi.Input<String>? tlsMinVersion;

  /// Creates a new [HBaseClusterState].
  /// [clusterVersion] Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  /// [componentVersion] A `componentVersion` block as defined below.
  /// [computeIsolation] A `computeIsolation` block as defined below.
  /// [diskEncryptions] One or more `diskEncryption` block as defined below.
  /// [extension] An `extension` block as defined below.
  /// [gateway] A `gateway` block as defined below.
  /// [httpsEndpoint] The HTTPS Connectivity Endpoint for this HDInsight HBase Cluster.
  /// [location] Specifies the Azure Region which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created.
  /// [metastores] A `metastores` block as defined below.
  /// [monitor] A `monitor` block as defined below.
  /// [name] Specifies the name for this HDInsight HBase Cluster. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below.
  /// [privateLinkConfiguration] A `privateLinkConfiguration` block as defined below.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created.
  /// [roles] A `roles` block as defined below.
  /// [securityProfile] A `securityProfile` block as defined below. Changing this forces a new resource to be created.
  /// [sshEndpoint] The SSH Connectivity Endpoint for this HDInsight HBase Cluster.
  /// [storageAccountGen2] A `storageAccountGen2` block as defined below.
  /// [storageAccounts] One or more `storageAccount` block as defined below.
  /// [tags] A map of Tags which should be assigned to this HDInsight HBase Cluster.
  /// [tier] Specifies the Tier which should be used for this HDInsight HBase Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  /// [tlsMinVersion] The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  const HBaseClusterState({
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
      clusterVersion: (() { final guardedValue = map['clusterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      componentVersion: (() { final guardedValue = map['componentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterComponentVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computeIsolation: (() { final guardedValue = map['computeIsolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterComputeIsolation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskEncryptions: (() { final guardedValue = map['diskEncryptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HBaseClusterDiskEncryption>(guardedValue, (value) => HBaseClusterDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterExtension.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpsEndpoint: (() { final guardedValue = map['httpsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metastores: (() { final guardedValue = map['metastores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterMetastores.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterMonitor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkConfiguration: (() { final guardedValue = map['privateLinkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterPrivateLinkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterRoles.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshEndpoint: (() { final guardedValue = map['sshEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountGen2: (() { final guardedValue = map['storageAccountGen2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterStorageAccountGen2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccounts: (() { final guardedValue = map['storageAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HBaseClusterStorageAccount>(guardedValue, (value) => HBaseClusterStorageAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsMinVersion: (() { final guardedValue = map['tlsMinVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
