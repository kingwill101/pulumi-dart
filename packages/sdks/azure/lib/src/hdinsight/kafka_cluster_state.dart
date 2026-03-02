// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_cluster_component_version.dart';
import 'kafka_cluster_compute_isolation.dart';
import 'kafka_cluster_disk_encryption.dart';
import 'kafka_cluster_extension.dart';
import 'kafka_cluster_gateway.dart';
import 'kafka_cluster_metastores.dart';
import 'kafka_cluster_monitor.dart';
import 'kafka_cluster_network.dart';
import 'kafka_cluster_private_link_configuration.dart';
import 'kafka_cluster_rest_proxy.dart';
import 'kafka_cluster_roles.dart';
import 'kafka_cluster_security_profile.dart';
import 'kafka_cluster_storage_account.dart';
import 'kafka_cluster_storage_account_gen2.dart';

/// Input properties used for looking up and filtering KafkaCluster resources.
class KafkaClusterState {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterVersion;
  /// A `component_version` block as defined below.
  final pulumi.Input<KafkaClusterComponentVersion>? componentVersion;
  /// A `compute_isolation` block as defined below.
  final pulumi.Input<KafkaClusterComputeIsolation>? computeIsolation;
  /// One or more `disk_encryption` block as defined below.
  ///
  /// > **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  final pulumi.Input<List<KafkaClusterDiskEncryption>>? diskEncryptions;
  /// Whether encryption in transit is enabled for this HDInsight Kafka Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? encryptionInTransitEnabled;
  /// An `extension` block as defined below.
  final pulumi.Input<KafkaClusterExtension>? extension;
  /// A `gateway` block as defined below.
  final pulumi.Input<KafkaClusterGateway>? gateway;
  /// The HTTPS Connectivity Endpoint for this HDInsight Kafka Cluster.
  final pulumi.Input<String>? httpsEndpoint;
  /// The Kafka Rest Proxy Endpoint for this HDInsight Kafka Cluster.
  final pulumi.Input<String>? kafkaRestProxyEndpoint;
  /// Specifies the Azure Region which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `metastores` block as defined below.
  final pulumi.Input<KafkaClusterMetastores>? metastores;
  /// A `monitor` block as defined below.
  final pulumi.Input<KafkaClusterMonitor>? monitor;
  /// Specifies the name for this HDInsight Kafka Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network` block as defined below.
  final pulumi.Input<KafkaClusterNetwork>? network;
  /// A `private_link_configuration` block as defined below.
  final pulumi.Input<KafkaClusterPrivateLinkConfiguration>? privateLinkConfiguration;
  /// Specifies the name of the Resource Group in which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `rest_proxy` block as defined below.
  final pulumi.Input<KafkaClusterRestProxy>? restProxy;
  /// A `roles` block as defined below.
  final pulumi.Input<KafkaClusterRoles>? roles;
  /// A `security_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<KafkaClusterSecurityProfile>? securityProfile;
  /// The SSH Connectivity Endpoint for this HDInsight Kafka Cluster.
  final pulumi.Input<String>? sshEndpoint;
  /// A `storage_account_gen2` block as defined below.
  final pulumi.Input<KafkaClusterStorageAccountGen2>? storageAccountGen2;
  /// One or more `storage_account` block as defined below.
  final pulumi.Input<List<KafkaClusterStorageAccount>>? storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight Kafka Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Tier which should be used for this HDInsight Kafka Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tier;
  /// The minimal supported TLS version. Possible values are `1.0`, `1.1` or `1.2`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tlsMinVersion;

  /// Creates a new [KafkaClusterState].
  /// [clusterVersion] Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  /// [componentVersion] A `component_version` block as defined below.
  /// [computeIsolation] A `compute_isolation` block as defined below.
  /// [diskEncryptions] One or more `disk_encryption` block as defined below.
  /// [encryptionInTransitEnabled] Whether encryption in transit is enabled for this HDInsight Kafka Cluster. Changing this forces a new resource to be created.
  /// [extension] An `extension` block as defined below.
  /// [gateway] A `gateway` block as defined below.
  /// [httpsEndpoint] The HTTPS Connectivity Endpoint for this HDInsight Kafka Cluster.
  /// [kafkaRestProxyEndpoint] The Kafka Rest Proxy Endpoint for this HDInsight Kafka Cluster.
  /// [location] Specifies the Azure Region which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created.
  /// [metastores] A `metastores` block as defined below.
  /// [monitor] A `monitor` block as defined below.
  /// [name] Specifies the name for this HDInsight Kafka Cluster. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below.
  /// [privateLinkConfiguration] A `private_link_configuration` block as defined below.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created.
  /// [restProxy] A `rest_proxy` block as defined below.
  /// [roles] A `roles` block as defined below.
  /// [securityProfile] A `security_profile` block as defined below. Changing this forces a new resource to be created.
  /// [sshEndpoint] The SSH Connectivity Endpoint for this HDInsight Kafka Cluster.
  /// [storageAccountGen2] A `storage_account_gen2` block as defined below.
  /// [storageAccounts] One or more `storage_account` block as defined below.
  /// [tags] A map of Tags which should be assigned to this HDInsight Kafka Cluster.
  /// [tier] Specifies the Tier which should be used for this HDInsight Kafka Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  /// [tlsMinVersion] The minimal supported TLS version. Possible values are `1.0`, `1.1` or `1.2`. Changing this forces a new resource to be created.
  KafkaClusterState({
    this.clusterVersion,
    this.componentVersion,
    this.computeIsolation,
    this.diskEncryptions,
    this.encryptionInTransitEnabled,
    this.extension,
    this.gateway,
    this.httpsEndpoint,
    this.kafkaRestProxyEndpoint,
    this.location,
    this.metastores,
    this.monitor,
    this.name,
    this.network,
    this.privateLinkConfiguration,
    this.resourceGroupName,
    this.restProxy,
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
      'componentVersion': ?pulumi.Input.mapOptionalInputValue<KafkaClusterComponentVersion, Map<String, dynamic>>(componentVersion, (value) => value.toMap()),
      'computeIsolation': ?pulumi.Input.mapOptionalInputValue<KafkaClusterComputeIsolation, Map<String, dynamic>>(computeIsolation, (value) => value.toMap()),
      'diskEncryptions': ?pulumi.Input.mapOptionalInputValue<List<KafkaClusterDiskEncryption>, List<Map<String, dynamic>>>(diskEncryptions, (value) => pulumi.Input.encodeList<KafkaClusterDiskEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionInTransitEnabled': ?encryptionInTransitEnabled,
      'extension': ?pulumi.Input.mapOptionalInputValue<KafkaClusterExtension, Map<String, dynamic>>(extension, (value) => value.toMap()),
      'gateway': ?pulumi.Input.mapOptionalInputValue<KafkaClusterGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'httpsEndpoint': ?httpsEndpoint,
      'kafkaRestProxyEndpoint': ?kafkaRestProxyEndpoint,
      'location': ?location,
      'metastores': ?pulumi.Input.mapOptionalInputValue<KafkaClusterMetastores, Map<String, dynamic>>(metastores, (value) => value.toMap()),
      'monitor': ?pulumi.Input.mapOptionalInputValue<KafkaClusterMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<KafkaClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'privateLinkConfiguration': ?pulumi.Input.mapOptionalInputValue<KafkaClusterPrivateLinkConfiguration, Map<String, dynamic>>(privateLinkConfiguration, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'restProxy': ?pulumi.Input.mapOptionalInputValue<KafkaClusterRestProxy, Map<String, dynamic>>(restProxy, (value) => value.toMap()),
      'roles': ?pulumi.Input.mapOptionalInputValue<KafkaClusterRoles, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<KafkaClusterSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'sshEndpoint': ?sshEndpoint,
      'storageAccountGen2': ?pulumi.Input.mapOptionalInputValue<KafkaClusterStorageAccountGen2, Map<String, dynamic>>(storageAccountGen2, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<KafkaClusterStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<KafkaClusterStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tier': ?tier,
      'tlsMinVersion': ?tlsMinVersion,
    };
  }

  factory KafkaClusterState.fromMap(Map<String, dynamic> map) {
    return KafkaClusterState(
      clusterVersion: map['clusterVersion'] == null ? null : (map['clusterVersion'] as String).input(),
      componentVersion: map['componentVersion'] == null ? null : (KafkaClusterComponentVersion.fromMap((map['componentVersion'] as Map).cast<String, dynamic>())).input(),
      computeIsolation: map['computeIsolation'] == null ? null : (KafkaClusterComputeIsolation.fromMap((map['computeIsolation'] as Map).cast<String, dynamic>())).input(),
      diskEncryptions: map['diskEncryptions'] == null ? null : (pulumi.Input.decodeList<KafkaClusterDiskEncryption>(map['diskEncryptions'], (value) => KafkaClusterDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryptionInTransitEnabled: map['encryptionInTransitEnabled'] == null ? null : (map['encryptionInTransitEnabled'] as bool).input(),
      extension: map['extension'] == null ? null : (KafkaClusterExtension.fromMap((map['extension'] as Map).cast<String, dynamic>())).input(),
      gateway: map['gateway'] == null ? null : (KafkaClusterGateway.fromMap((map['gateway'] as Map).cast<String, dynamic>())).input(),
      httpsEndpoint: map['httpsEndpoint'] == null ? null : (map['httpsEndpoint'] as String).input(),
      kafkaRestProxyEndpoint: map['kafkaRestProxyEndpoint'] == null ? null : (map['kafkaRestProxyEndpoint'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      metastores: map['metastores'] == null ? null : (KafkaClusterMetastores.fromMap((map['metastores'] as Map).cast<String, dynamic>())).input(),
      monitor: map['monitor'] == null ? null : (KafkaClusterMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (KafkaClusterNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      privateLinkConfiguration: map['privateLinkConfiguration'] == null ? null : (KafkaClusterPrivateLinkConfiguration.fromMap((map['privateLinkConfiguration'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      restProxy: map['restProxy'] == null ? null : (KafkaClusterRestProxy.fromMap((map['restProxy'] as Map).cast<String, dynamic>())).input(),
      roles: map['roles'] == null ? null : (KafkaClusterRoles.fromMap((map['roles'] as Map).cast<String, dynamic>())).input(),
      securityProfile: map['securityProfile'] == null ? null : (KafkaClusterSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())).input(),
      sshEndpoint: map['sshEndpoint'] == null ? null : (map['sshEndpoint'] as String).input(),
      storageAccountGen2: map['storageAccountGen2'] == null ? null : (KafkaClusterStorageAccountGen2.fromMap((map['storageAccountGen2'] as Map).cast<String, dynamic>())).input(),
      storageAccounts: map['storageAccounts'] == null ? null : (pulumi.Input.decodeList<KafkaClusterStorageAccount>(map['storageAccounts'], (value) => KafkaClusterStorageAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
      tlsMinVersion: map['tlsMinVersion'] == null ? null : (map['tlsMinVersion'] as String).input(),
    );
  }
}

