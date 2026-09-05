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
  /// A `componentVersion` block as defined below.
  final pulumi.Input<HadoopClusterComponentVersion> componentVersion;
  /// A `computeIsolation` block as defined below.
  final pulumi.Input<HadoopClusterComputeIsolation?>? computeIsolation;
  /// One or more `diskEncryption` block as defined below.
  final pulumi.Input<List<HadoopClusterDiskEncryption>?>? diskEncryptions;
  /// An `extension` block as defined below.
  final pulumi.Input<HadoopClusterExtension?>? extension;
  /// A `gateway` block as defined below.
  final pulumi.Input<HadoopClusterGateway> gateway;
  /// Specifies the Azure Region which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// A `metastores` block as defined below.
  final pulumi.Input<HadoopClusterMetastores?>? metastores;
  /// A `monitor` block as defined below.
  final pulumi.Input<HadoopClusterMonitor?>? monitor;
  /// Specifies the name for this HDInsight Hadoop Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `network` block as defined below.
  final pulumi.Input<HadoopClusterNetwork?>? network;
  /// A `privateLinkConfiguration` block as defined below.
  final pulumi.Input<HadoopClusterPrivateLinkConfiguration?>? privateLinkConfiguration;
  /// Specifies the name of the Resource Group in which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `roles` block as defined below.
  final pulumi.Input<HadoopClusterRoles> roles;
  /// A `securityProfile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HadoopClusterSecurityProfile?>? securityProfile;
  /// A `storageAccountGen2` block as defined below.
  final pulumi.Input<HadoopClusterStorageAccountGen2?>? storageAccountGen2;
  /// One or more `storageAccount` block as defined below.
  final pulumi.Input<List<HadoopClusterStorageAccount>?>? storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight Hadoop Cluster.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies the Tier which should be used for this HDInsight Hadoop Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String> tier;
  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  final pulumi.Input<String?>? tlsMinVersion;

  /// Creates a new [HadoopClusterArgs].
  /// [clusterVersion] Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  /// [componentVersion] A `componentVersion` block as defined below.
  /// [computeIsolation] A `computeIsolation` block as defined below.
  /// [diskEncryptions] One or more `diskEncryption` block as defined below.
  /// [extension] An `extension` block as defined below.
  /// [gateway] A `gateway` block as defined below.
  /// [location] Specifies the Azure Region which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created.
  /// [metastores] A `metastores` block as defined below.
  /// [monitor] A `monitor` block as defined below.
  /// [name] Specifies the name for this HDInsight Hadoop Cluster. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below.
  /// [privateLinkConfiguration] A `privateLinkConfiguration` block as defined below.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created.
  /// [roles] A `roles` block as defined below.
  /// [securityProfile] A `securityProfile` block as defined below. Changing this forces a new resource to be created.
  /// [storageAccountGen2] A `storageAccountGen2` block as defined below.
  /// [storageAccounts] One or more `storageAccount` block as defined below.
  /// [tags] A map of Tags which should be assigned to this HDInsight Hadoop Cluster.
  /// [tier] Specifies the Tier which should be used for this HDInsight Hadoop Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  /// [tlsMinVersion] The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  const HadoopClusterArgs({
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
      clusterVersion: pulumi.Input.fromValue(map['clusterVersion'] as String),
      componentVersion: pulumi.Input.fromValue(HadoopClusterComponentVersion.fromMap((map['componentVersion']! as Map).cast<String, dynamic>())),
      computeIsolation: (() { final guardedValue = map['computeIsolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopClusterComputeIsolation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskEncryptions: (() { final guardedValue = map['diskEncryptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HadoopClusterDiskEncryption>(guardedValue, (value) => HadoopClusterDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopClusterExtension.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gateway: pulumi.Input.fromValue(HadoopClusterGateway.fromMap((map['gateway']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metastores: (() { final guardedValue = map['metastores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopClusterMetastores.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopClusterMonitor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkConfiguration: (() { final guardedValue = map['privateLinkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopClusterPrivateLinkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      roles: pulumi.Input.fromValue(HadoopClusterRoles.fromMap((map['roles']! as Map).cast<String, dynamic>())),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopClusterSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountGen2: (() { final guardedValue = map['storageAccountGen2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HadoopClusterStorageAccountGen2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccounts: (() { final guardedValue = map['storageAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HadoopClusterStorageAccount>(guardedValue, (value) => HadoopClusterStorageAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tier: pulumi.Input.fromValue(map['tier'] as String),
      tlsMinVersion: (() { final guardedValue = map['tlsMinVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
