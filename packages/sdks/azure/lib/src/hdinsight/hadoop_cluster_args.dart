// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_cluster_component_version.dart';
import 'hadoop_cluster_compute_isolation.dart';
import 'hadoop_cluster_disk_encryption.dart';
import 'hadoop_cluster_extension.dart';
import 'hadoop_cluster_gateway.dart';
import 'hadoop_cluster_metastores.dart';
import 'hadoop_cluster_monitor.dart';
import 'hadoop_cluster_network.dart';
import 'hadoop_cluster_private_link_configuration.dart';
import 'hadoop_cluster_roles.dart';
import 'hadoop_cluster_security_profile.dart';
import 'hadoop_cluster_storage_account.dart';
import 'hadoop_cluster_storage_account_gen2.dart';

/// {@template pulumi_hdinsight_hadoop_cluster_hadoop_cluster_args_doc}
/// The set of arguments for HadoopCluster.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_hadoop_cluster_hadoop_cluster_args_doc}
class HadoopClusterArgs {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterVersion;
  /// A `component_version` block as defined below.
  final pulumi.Input<HadoopClusterComponentVersion> componentVersion;
  /// A `compute_isolation` block as defined below.
  final pulumi.Input<HadoopClusterComputeIsolation>? computeIsolation;
  /// One or more `disk_encryption` block as defined below.
  final pulumi.Input<List<HadoopClusterDiskEncryption>>? diskEncryptions;
  /// An `extension` block as defined below.
  final pulumi.Input<HadoopClusterExtension>? extension;
  /// A `gateway` block as defined below.
  final pulumi.Input<HadoopClusterGateway> gateway;
  /// Specifies the Azure Region which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `metastores` block as defined below.
  final pulumi.Input<HadoopClusterMetastores>? metastores;
  /// A `monitor` block as defined below.
  final pulumi.Input<HadoopClusterMonitor>? monitor;
  /// Specifies the name for this HDInsight Hadoop Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network` block as defined below.
  final pulumi.Input<HadoopClusterNetwork>? network;
  /// A `private_link_configuration` block as defined below.
  final pulumi.Input<HadoopClusterPrivateLinkConfiguration>? privateLinkConfiguration;
  /// Specifies the name of the Resource Group in which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `roles` block as defined below.
  final pulumi.Input<HadoopClusterRoles> roles;
  /// A `security_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HadoopClusterSecurityProfile>? securityProfile;
  /// A `storage_account_gen2` block as defined below.
  final pulumi.Input<HadoopClusterStorageAccountGen2>? storageAccountGen2;
  /// One or more `storage_account` block as defined below.
  final pulumi.Input<List<HadoopClusterStorageAccount>>? storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight Hadoop Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Tier which should be used for this HDInsight Hadoop Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String> tier;
  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  final pulumi.Input<String>? tlsMinVersion;

  /// Creates a new [HadoopClusterArgs].
  /// [clusterVersion] Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  /// [componentVersion] A `component_version` block as defined below.
  /// [computeIsolation] A `compute_isolation` block as defined below.
  /// [diskEncryptions] One or more `disk_encryption` block as defined below.
  /// [extension] An `extension` block as defined below.
  /// [gateway] A `gateway` block as defined below.
  /// [location] Specifies the Azure Region which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created.
  /// [metastores] A `metastores` block as defined below.
  /// [monitor] A `monitor` block as defined below.
  /// [name] Specifies the name for this HDInsight Hadoop Cluster. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below.
  /// [privateLinkConfiguration] A `private_link_configuration` block as defined below.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created.
  /// [roles] A `roles` block as defined below.
  /// [securityProfile] A `security_profile` block as defined below. Changing this forces a new resource to be created.
  /// [storageAccountGen2] A `storage_account_gen2` block as defined below.
  /// [storageAccounts] One or more `storage_account` block as defined below.
  /// [tags] A map of Tags which should be assigned to this HDInsight Hadoop Cluster.
  /// [tier] Specifies the Tier which should be used for this HDInsight Hadoop Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  /// [tlsMinVersion] The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  HadoopClusterArgs({
    required this.clusterVersion,
    required this.componentVersion,
    this.computeIsolation,
    this.diskEncryptions,
    this.extension,
    required this.gateway,
    this.location,
    this.metastores,
    this.monitor,
    this.name,
    this.network,
    this.privateLinkConfiguration,
    required this.resourceGroupName,
    required this.roles,
    this.securityProfile,
    this.storageAccountGen2,
    this.storageAccounts,
    this.tags,
    required this.tier,
    this.tlsMinVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterVersion': clusterVersion,
      'componentVersion': pulumi.Input.mapInputValue<HadoopClusterComponentVersion, Map<String, dynamic>>(componentVersion, (value) => value.toMap()),
      'computeIsolation': ?pulumi.Input.mapOptionalInputValue<HadoopClusterComputeIsolation, Map<String, dynamic>>(computeIsolation, (value) => value.toMap()),
      'diskEncryptions': ?pulumi.Input.mapOptionalInputValue<List<HadoopClusterDiskEncryption>, List<Map<String, dynamic>>>(diskEncryptions, (value) => pulumi.Input.encodeList<HadoopClusterDiskEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extension': ?pulumi.Input.mapOptionalInputValue<HadoopClusterExtension, Map<String, dynamic>>(extension, (value) => value.toMap()),
      'gateway': pulumi.Input.mapInputValue<HadoopClusterGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'location': ?location,
      'metastores': ?pulumi.Input.mapOptionalInputValue<HadoopClusterMetastores, Map<String, dynamic>>(metastores, (value) => value.toMap()),
      'monitor': ?pulumi.Input.mapOptionalInputValue<HadoopClusterMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<HadoopClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'privateLinkConfiguration': ?pulumi.Input.mapOptionalInputValue<HadoopClusterPrivateLinkConfiguration, Map<String, dynamic>>(privateLinkConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'roles': pulumi.Input.mapInputValue<HadoopClusterRoles, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<HadoopClusterSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageAccountGen2': ?pulumi.Input.mapOptionalInputValue<HadoopClusterStorageAccountGen2, Map<String, dynamic>>(storageAccountGen2, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<HadoopClusterStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<HadoopClusterStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tier': tier,
      'tlsMinVersion': ?tlsMinVersion,
    };
  }

  factory HadoopClusterArgs.fromMap(Map<String, dynamic> map) {
    return HadoopClusterArgs(
      clusterVersion: (map['clusterVersion'] as String).input(),
      componentVersion: (HadoopClusterComponentVersion.fromMap((map['componentVersion'] as Map).cast<String, dynamic>())).input(),
      computeIsolation: map['computeIsolation'] == null ? null : (HadoopClusterComputeIsolation.fromMap((map['computeIsolation'] as Map).cast<String, dynamic>())).input(),
      diskEncryptions: map['diskEncryptions'] == null ? null : (pulumi.Input.decodeList<HadoopClusterDiskEncryption>(map['diskEncryptions'], (value) => HadoopClusterDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      extension: map['extension'] == null ? null : (HadoopClusterExtension.fromMap((map['extension'] as Map).cast<String, dynamic>())).input(),
      gateway: (HadoopClusterGateway.fromMap((map['gateway'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      metastores: map['metastores'] == null ? null : (HadoopClusterMetastores.fromMap((map['metastores'] as Map).cast<String, dynamic>())).input(),
      monitor: map['monitor'] == null ? null : (HadoopClusterMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (HadoopClusterNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      privateLinkConfiguration: map['privateLinkConfiguration'] == null ? null : (HadoopClusterPrivateLinkConfiguration.fromMap((map['privateLinkConfiguration'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      roles: (HadoopClusterRoles.fromMap((map['roles'] as Map).cast<String, dynamic>())).input(),
      securityProfile: map['securityProfile'] == null ? null : (HadoopClusterSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())).input(),
      storageAccountGen2: map['storageAccountGen2'] == null ? null : (HadoopClusterStorageAccountGen2.fromMap((map['storageAccountGen2'] as Map).cast<String, dynamic>())).input(),
      storageAccounts: map['storageAccounts'] == null ? null : (pulumi.Input.decodeList<HadoopClusterStorageAccount>(map['storageAccounts'], (value) => HadoopClusterStorageAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tier: (map['tier'] as String).input(),
      tlsMinVersion: map['tlsMinVersion'] == null ? null : (map['tlsMinVersion'] as String).input(),
    );
  }
}

