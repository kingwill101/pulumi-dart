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
    pulumi.Output<String>? clusterVersion,
    pulumi.Output<KafkaClusterComponentVersion>? componentVersion,
    pulumi.Output<KafkaClusterComputeIsolation>? computeIsolation,
    pulumi.Output<List<KafkaClusterDiskEncryption>>? diskEncryptions,
    pulumi.Output<bool>? encryptionInTransitEnabled,
    pulumi.Output<KafkaClusterExtension>? extension,
    pulumi.Output<KafkaClusterGateway>? gateway,
    pulumi.Output<String>? httpsEndpoint,
    pulumi.Output<String>? kafkaRestProxyEndpoint,
    pulumi.Output<String>? location,
    pulumi.Output<KafkaClusterMetastores>? metastores,
    pulumi.Output<KafkaClusterMonitor>? monitor,
    pulumi.Output<String>? name,
    pulumi.Output<KafkaClusterNetwork>? network,
    pulumi.Output<KafkaClusterPrivateLinkConfiguration>? privateLinkConfiguration,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<KafkaClusterRestProxy>? restProxy,
    pulumi.Output<KafkaClusterRoles>? roles,
    pulumi.Output<KafkaClusterSecurityProfile>? securityProfile,
    pulumi.Output<String>? sshEndpoint,
    pulumi.Output<KafkaClusterStorageAccountGen2>? storageAccountGen2,
    pulumi.Output<List<KafkaClusterStorageAccount>>? storageAccounts,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tier,
    pulumi.Output<String>? tlsMinVersion,
  }) :
      clusterVersion = pulumi.Input.asOptionalInput<String>(clusterVersion),
      componentVersion = pulumi.Input.asOptionalInput<KafkaClusterComponentVersion>(componentVersion),
      computeIsolation = pulumi.Input.asOptionalInput<KafkaClusterComputeIsolation>(computeIsolation),
      diskEncryptions = pulumi.Input.asOptionalInput<List<KafkaClusterDiskEncryption>>(diskEncryptions),
      encryptionInTransitEnabled = pulumi.Input.asOptionalInput<bool>(encryptionInTransitEnabled),
      extension = pulumi.Input.asOptionalInput<KafkaClusterExtension>(extension),
      gateway = pulumi.Input.asOptionalInput<KafkaClusterGateway>(gateway),
      httpsEndpoint = pulumi.Input.asOptionalInput<String>(httpsEndpoint),
      kafkaRestProxyEndpoint = pulumi.Input.asOptionalInput<String>(kafkaRestProxyEndpoint),
      location = pulumi.Input.asOptionalInput<String>(location),
      metastores = pulumi.Input.asOptionalInput<KafkaClusterMetastores>(metastores),
      monitor = pulumi.Input.asOptionalInput<KafkaClusterMonitor>(monitor),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<KafkaClusterNetwork>(network),
      privateLinkConfiguration = pulumi.Input.asOptionalInput<KafkaClusterPrivateLinkConfiguration>(privateLinkConfiguration),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      restProxy = pulumi.Input.asOptionalInput<KafkaClusterRestProxy>(restProxy),
      roles = pulumi.Input.asOptionalInput<KafkaClusterRoles>(roles),
      securityProfile = pulumi.Input.asOptionalInput<KafkaClusterSecurityProfile>(securityProfile),
      sshEndpoint = pulumi.Input.asOptionalInput<String>(sshEndpoint),
      storageAccountGen2 = pulumi.Input.asOptionalInput<KafkaClusterStorageAccountGen2>(storageAccountGen2),
      storageAccounts = pulumi.Input.asOptionalInput<List<KafkaClusterStorageAccount>>(storageAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tier = pulumi.Input.asOptionalInput<String>(tier),
      tlsMinVersion = pulumi.Input.asOptionalInput<String>(tlsMinVersion);

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
      clusterVersion: map['clusterVersion'] == null ? null : pulumi.Output.create<String>(map['clusterVersion'] as String),
      componentVersion: map['componentVersion'] == null ? null : pulumi.Output.create<KafkaClusterComponentVersion>(KafkaClusterComponentVersion.fromMap((map['componentVersion'] as Map).cast<String, dynamic>())),
      computeIsolation: map['computeIsolation'] == null ? null : pulumi.Output.create<KafkaClusterComputeIsolation>(KafkaClusterComputeIsolation.fromMap((map['computeIsolation'] as Map).cast<String, dynamic>())),
      diskEncryptions: map['diskEncryptions'] == null ? null : pulumi.Output.create<List<KafkaClusterDiskEncryption>>(pulumi.Input.decodeList<KafkaClusterDiskEncryption>(map['diskEncryptions'], (value) => KafkaClusterDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))),
      encryptionInTransitEnabled: map['encryptionInTransitEnabled'] == null ? null : pulumi.Output.create<bool>(map['encryptionInTransitEnabled'] as bool),
      extension: map['extension'] == null ? null : pulumi.Output.create<KafkaClusterExtension>(KafkaClusterExtension.fromMap((map['extension'] as Map).cast<String, dynamic>())),
      gateway: map['gateway'] == null ? null : pulumi.Output.create<KafkaClusterGateway>(KafkaClusterGateway.fromMap((map['gateway'] as Map).cast<String, dynamic>())),
      httpsEndpoint: map['httpsEndpoint'] == null ? null : pulumi.Output.create<String>(map['httpsEndpoint'] as String),
      kafkaRestProxyEndpoint: map['kafkaRestProxyEndpoint'] == null ? null : pulumi.Output.create<String>(map['kafkaRestProxyEndpoint'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metastores: map['metastores'] == null ? null : pulumi.Output.create<KafkaClusterMetastores>(KafkaClusterMetastores.fromMap((map['metastores'] as Map).cast<String, dynamic>())),
      monitor: map['monitor'] == null ? null : pulumi.Output.create<KafkaClusterMonitor>(KafkaClusterMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<KafkaClusterNetwork>(KafkaClusterNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())),
      privateLinkConfiguration: map['privateLinkConfiguration'] == null ? null : pulumi.Output.create<KafkaClusterPrivateLinkConfiguration>(KafkaClusterPrivateLinkConfiguration.fromMap((map['privateLinkConfiguration'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restProxy: map['restProxy'] == null ? null : pulumi.Output.create<KafkaClusterRestProxy>(KafkaClusterRestProxy.fromMap((map['restProxy'] as Map).cast<String, dynamic>())),
      roles: map['roles'] == null ? null : pulumi.Output.create<KafkaClusterRoles>(KafkaClusterRoles.fromMap((map['roles'] as Map).cast<String, dynamic>())),
      securityProfile: map['securityProfile'] == null ? null : pulumi.Output.create<KafkaClusterSecurityProfile>(KafkaClusterSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())),
      sshEndpoint: map['sshEndpoint'] == null ? null : pulumi.Output.create<String>(map['sshEndpoint'] as String),
      storageAccountGen2: map['storageAccountGen2'] == null ? null : pulumi.Output.create<KafkaClusterStorageAccountGen2>(KafkaClusterStorageAccountGen2.fromMap((map['storageAccountGen2'] as Map).cast<String, dynamic>())),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Output.create<List<KafkaClusterStorageAccount>>(pulumi.Input.decodeList<KafkaClusterStorageAccount>(map['storageAccounts'], (value) => KafkaClusterStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
      tlsMinVersion: map['tlsMinVersion'] == null ? null : pulumi.Output.create<String>(map['tlsMinVersion'] as String),
    );
  }
}

