// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_cluster_component_version.dart';
import 'spark_cluster_compute_isolation.dart';
import 'spark_cluster_disk_encryption.dart';
import 'spark_cluster_extension.dart';
import 'spark_cluster_gateway.dart';
import 'spark_cluster_metastores.dart';
import 'spark_cluster_monitor.dart';
import 'spark_cluster_network.dart';
import 'spark_cluster_private_link_configuration.dart';
import 'spark_cluster_roles.dart';
import 'spark_cluster_security_profile.dart';
import 'spark_cluster_storage_account.dart';
import 'spark_cluster_storage_account_gen2.dart';

/// Input properties used for looking up and filtering SparkCluster resources.
class SparkClusterState {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterVersion;
  /// A `componentVersion` block as defined below.
  final pulumi.Input<SparkClusterComponentVersion>? componentVersion;
  /// A `computeIsolation` block as defined below.
  final pulumi.Input<SparkClusterComputeIsolation>? computeIsolation;
  /// One or more `diskEncryption` block as defined below.
  final pulumi.Input<List<SparkClusterDiskEncryption>>? diskEncryptions;
  /// Whether encryption in transit is enabled for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? encryptionInTransitEnabled;
  /// An `extension` block as defined below.
  final pulumi.Input<SparkClusterExtension>? extension;
  /// A `gateway` block as defined below.
  final pulumi.Input<SparkClusterGateway>? gateway;
  /// The HTTPS Connectivity Endpoint for this HDInsight Spark Cluster.
  final pulumi.Input<String>? httpsEndpoint;
  /// Specifies the Azure Region which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `metastores` block as defined below.
  final pulumi.Input<SparkClusterMetastores>? metastores;
  /// A `monitor` block as defined below.
  final pulumi.Input<SparkClusterMonitor>? monitor;
  /// Specifies the name for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network` block as defined below.
  final pulumi.Input<SparkClusterNetwork>? network;
  /// A `privateLinkConfiguration` block as defined below.
  final pulumi.Input<SparkClusterPrivateLinkConfiguration>? privateLinkConfiguration;
  /// Specifies the name of the Resource Group in which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `roles` block as defined below.
  final pulumi.Input<SparkClusterRoles>? roles;
  /// A `securityProfile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SparkClusterSecurityProfile>? securityProfile;
  /// The SSH Connectivity Endpoint for this HDInsight Spark Cluster.
  final pulumi.Input<String>? sshEndpoint;
  /// A `storageAccountGen2` block as defined below.
  final pulumi.Input<SparkClusterStorageAccountGen2>? storageAccountGen2;
  /// One or more `storageAccount` block as defined below.
  final pulumi.Input<List<SparkClusterStorageAccount>>? storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight Spark Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Tier which should be used for this HDInsight Spark Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tier;
  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  final pulumi.Input<String>? tlsMinVersion;
  /// A list of Availability Zones which should be used for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [SparkClusterState].
  /// [clusterVersion] Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  /// [componentVersion] A `componentVersion` block as defined below.
  /// [computeIsolation] A `computeIsolation` block as defined below.
  /// [diskEncryptions] One or more `diskEncryption` block as defined below.
  /// [encryptionInTransitEnabled] Whether encryption in transit is enabled for this Cluster. Changing this forces a new resource to be created.
  /// [extension] An `extension` block as defined below.
  /// [gateway] A `gateway` block as defined below.
  /// [httpsEndpoint] The HTTPS Connectivity Endpoint for this HDInsight Spark Cluster.
  /// [location] Specifies the Azure Region which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created.
  /// [metastores] A `metastores` block as defined below.
  /// [monitor] A `monitor` block as defined below.
  /// [name] Specifies the name for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below.
  /// [privateLinkConfiguration] A `privateLinkConfiguration` block as defined below.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight Spark Cluster should exist. Changing this forces a new resource to be created.
  /// [roles] A `roles` block as defined below.
  /// [securityProfile] A `securityProfile` block as defined below. Changing this forces a new resource to be created.
  /// [sshEndpoint] The SSH Connectivity Endpoint for this HDInsight Spark Cluster.
  /// [storageAccountGen2] A `storageAccountGen2` block as defined below.
  /// [storageAccounts] One or more `storageAccount` block as defined below.
  /// [tags] A map of Tags which should be assigned to this HDInsight Spark Cluster.
  /// [tier] Specifies the Tier which should be used for this HDInsight Spark Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  /// [tlsMinVersion] The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  /// [zones] A list of Availability Zones which should be used for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  const SparkClusterState({
    this.clusterVersion,
    this.componentVersion,
    this.computeIsolation,
    this.diskEncryptions,
    this.encryptionInTransitEnabled,
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
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterVersion': ?clusterVersion,
      'componentVersion': ?pulumi.Input.mapOptionalInputValue<SparkClusterComponentVersion, Map<String, dynamic>>(componentVersion, (value) => value.toMap()),
      'computeIsolation': ?pulumi.Input.mapOptionalInputValue<SparkClusterComputeIsolation, Map<String, dynamic>>(computeIsolation, (value) => value.toMap()),
      'diskEncryptions': ?pulumi.Input.mapOptionalInputValue<List<SparkClusterDiskEncryption>, List<Map<String, dynamic>>>(diskEncryptions, (value) => pulumi.Input.encodeList<SparkClusterDiskEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionInTransitEnabled': ?encryptionInTransitEnabled,
      'extension': ?pulumi.Input.mapOptionalInputValue<SparkClusterExtension, Map<String, dynamic>>(extension, (value) => value.toMap()),
      'gateway': ?pulumi.Input.mapOptionalInputValue<SparkClusterGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'httpsEndpoint': ?httpsEndpoint,
      'location': ?location,
      'metastores': ?pulumi.Input.mapOptionalInputValue<SparkClusterMetastores, Map<String, dynamic>>(metastores, (value) => value.toMap()),
      'monitor': ?pulumi.Input.mapOptionalInputValue<SparkClusterMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<SparkClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'privateLinkConfiguration': ?pulumi.Input.mapOptionalInputValue<SparkClusterPrivateLinkConfiguration, Map<String, dynamic>>(privateLinkConfiguration, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'roles': ?pulumi.Input.mapOptionalInputValue<SparkClusterRoles, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<SparkClusterSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'sshEndpoint': ?sshEndpoint,
      'storageAccountGen2': ?pulumi.Input.mapOptionalInputValue<SparkClusterStorageAccountGen2, Map<String, dynamic>>(storageAccountGen2, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<SparkClusterStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<SparkClusterStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tier': ?tier,
      'tlsMinVersion': ?tlsMinVersion,
      'zones': ?zones,
    };
  }

  factory SparkClusterState.fromMap(Map<String, dynamic> map) {
    return SparkClusterState(
      clusterVersion: (() { final guardedValue = map['clusterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      componentVersion: (() { final guardedValue = map['componentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkClusterComponentVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computeIsolation: (() { final guardedValue = map['computeIsolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkClusterComputeIsolation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskEncryptions: (() { final guardedValue = map['diskEncryptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SparkClusterDiskEncryption>(guardedValue, (value) => SparkClusterDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryptionInTransitEnabled: (() { final guardedValue = map['encryptionInTransitEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkClusterExtension.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkClusterGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpsEndpoint: (() { final guardedValue = map['httpsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metastores: (() { final guardedValue = map['metastores']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkClusterMetastores.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkClusterMonitor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkClusterNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkConfiguration: (() { final guardedValue = map['privateLinkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkClusterPrivateLinkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkClusterRoles.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkClusterSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshEndpoint: (() { final guardedValue = map['sshEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountGen2: (() { final guardedValue = map['storageAccountGen2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkClusterStorageAccountGen2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccounts: (() { final guardedValue = map['storageAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SparkClusterStorageAccount>(guardedValue, (value) => SparkClusterStorageAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsMinVersion: (() { final guardedValue = map['tlsMinVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
