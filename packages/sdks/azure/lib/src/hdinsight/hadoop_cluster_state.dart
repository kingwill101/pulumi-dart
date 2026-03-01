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

/// Input properties used for looking up and filtering HadoopCluster resources.
class HadoopClusterState {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterVersion;
  /// A `component_version` block as defined below.
  final pulumi.Input<HadoopClusterComponentVersion>? componentVersion;
  /// A `compute_isolation` block as defined below.
  final pulumi.Input<HadoopClusterComputeIsolation>? computeIsolation;
  /// One or more `disk_encryption` block as defined below.
  final pulumi.Input<List<HadoopClusterDiskEncryption>>? diskEncryptions;
  /// An `extension` block as defined below.
  final pulumi.Input<HadoopClusterExtension>? extension;
  /// A `gateway` block as defined below.
  final pulumi.Input<HadoopClusterGateway>? gateway;
  /// The HTTPS Connectivity Endpoint for this HDInsight Hadoop Cluster.
  final pulumi.Input<String>? httpsEndpoint;
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
  final pulumi.Input<String>? resourceGroupName;
  /// A `roles` block as defined below.
  final pulumi.Input<HadoopClusterRoles>? roles;
  /// A `security_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HadoopClusterSecurityProfile>? securityProfile;
  /// The SSH Connectivity Endpoint for this HDInsight Hadoop Cluster.
  final pulumi.Input<String>? sshEndpoint;
  /// A `storage_account_gen2` block as defined below.
  final pulumi.Input<HadoopClusterStorageAccountGen2>? storageAccountGen2;
  /// One or more `storage_account` block as defined below.
  final pulumi.Input<List<HadoopClusterStorageAccount>>? storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight Hadoop Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Tier which should be used for this HDInsight Hadoop Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tier;
  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  final pulumi.Input<String>? tlsMinVersion;

  /// Creates a new [HadoopClusterState].
  /// [clusterVersion] Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  /// [componentVersion] A `component_version` block as defined below.
  /// [computeIsolation] A `compute_isolation` block as defined below.
  /// [diskEncryptions] One or more `disk_encryption` block as defined below.
  /// [extension] An `extension` block as defined below.
  /// [gateway] A `gateway` block as defined below.
  /// [httpsEndpoint] The HTTPS Connectivity Endpoint for this HDInsight Hadoop Cluster.
  /// [location] Specifies the Azure Region which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created.
  /// [metastores] A `metastores` block as defined below.
  /// [monitor] A `monitor` block as defined below.
  /// [name] Specifies the name for this HDInsight Hadoop Cluster. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below.
  /// [privateLinkConfiguration] A `private_link_configuration` block as defined below.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight Hadoop Cluster should exist. Changing this forces a new resource to be created.
  /// [roles] A `roles` block as defined below.
  /// [securityProfile] A `security_profile` block as defined below. Changing this forces a new resource to be created.
  /// [sshEndpoint] The SSH Connectivity Endpoint for this HDInsight Hadoop Cluster.
  /// [storageAccountGen2] A `storage_account_gen2` block as defined below.
  /// [storageAccounts] One or more `storage_account` block as defined below.
  /// [tags] A map of Tags which should be assigned to this HDInsight Hadoop Cluster.
  /// [tier] Specifies the Tier which should be used for this HDInsight Hadoop Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  /// [tlsMinVersion] The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  HadoopClusterState({
    pulumi.Output<String>? clusterVersion,
    pulumi.Output<HadoopClusterComponentVersion>? componentVersion,
    pulumi.Output<HadoopClusterComputeIsolation>? computeIsolation,
    pulumi.Output<List<HadoopClusterDiskEncryption>>? diskEncryptions,
    pulumi.Output<HadoopClusterExtension>? extension,
    pulumi.Output<HadoopClusterGateway>? gateway,
    pulumi.Output<String>? httpsEndpoint,
    pulumi.Output<String>? location,
    pulumi.Output<HadoopClusterMetastores>? metastores,
    pulumi.Output<HadoopClusterMonitor>? monitor,
    pulumi.Output<String>? name,
    pulumi.Output<HadoopClusterNetwork>? network,
    pulumi.Output<HadoopClusterPrivateLinkConfiguration>? privateLinkConfiguration,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<HadoopClusterRoles>? roles,
    pulumi.Output<HadoopClusterSecurityProfile>? securityProfile,
    pulumi.Output<String>? sshEndpoint,
    pulumi.Output<HadoopClusterStorageAccountGen2>? storageAccountGen2,
    pulumi.Output<List<HadoopClusterStorageAccount>>? storageAccounts,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tier,
    pulumi.Output<String>? tlsMinVersion,
  }) :
      clusterVersion = pulumi.Input.asOptionalInput<String>(clusterVersion),
      componentVersion = pulumi.Input.asOptionalInput<HadoopClusterComponentVersion>(componentVersion),
      computeIsolation = pulumi.Input.asOptionalInput<HadoopClusterComputeIsolation>(computeIsolation),
      diskEncryptions = pulumi.Input.asOptionalInput<List<HadoopClusterDiskEncryption>>(diskEncryptions),
      extension = pulumi.Input.asOptionalInput<HadoopClusterExtension>(extension),
      gateway = pulumi.Input.asOptionalInput<HadoopClusterGateway>(gateway),
      httpsEndpoint = pulumi.Input.asOptionalInput<String>(httpsEndpoint),
      location = pulumi.Input.asOptionalInput<String>(location),
      metastores = pulumi.Input.asOptionalInput<HadoopClusterMetastores>(metastores),
      monitor = pulumi.Input.asOptionalInput<HadoopClusterMonitor>(monitor),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<HadoopClusterNetwork>(network),
      privateLinkConfiguration = pulumi.Input.asOptionalInput<HadoopClusterPrivateLinkConfiguration>(privateLinkConfiguration),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      roles = pulumi.Input.asOptionalInput<HadoopClusterRoles>(roles),
      securityProfile = pulumi.Input.asOptionalInput<HadoopClusterSecurityProfile>(securityProfile),
      sshEndpoint = pulumi.Input.asOptionalInput<String>(sshEndpoint),
      storageAccountGen2 = pulumi.Input.asOptionalInput<HadoopClusterStorageAccountGen2>(storageAccountGen2),
      storageAccounts = pulumi.Input.asOptionalInput<List<HadoopClusterStorageAccount>>(storageAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tier = pulumi.Input.asOptionalInput<String>(tier),
      tlsMinVersion = pulumi.Input.asOptionalInput<String>(tlsMinVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterVersion': ?clusterVersion,
      'componentVersion': ?pulumi.Input.mapOptionalInputValue<HadoopClusterComponentVersion, Map<String, dynamic>>(componentVersion, (value) => value.toMap()),
      'computeIsolation': ?pulumi.Input.mapOptionalInputValue<HadoopClusterComputeIsolation, Map<String, dynamic>>(computeIsolation, (value) => value.toMap()),
      'diskEncryptions': ?pulumi.Input.mapOptionalInputValue<List<HadoopClusterDiskEncryption>, List<Map<String, dynamic>>>(diskEncryptions, (value) => pulumi.Input.encodeList<HadoopClusterDiskEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extension': ?pulumi.Input.mapOptionalInputValue<HadoopClusterExtension, Map<String, dynamic>>(extension, (value) => value.toMap()),
      'gateway': ?pulumi.Input.mapOptionalInputValue<HadoopClusterGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'httpsEndpoint': ?httpsEndpoint,
      'location': ?location,
      'metastores': ?pulumi.Input.mapOptionalInputValue<HadoopClusterMetastores, Map<String, dynamic>>(metastores, (value) => value.toMap()),
      'monitor': ?pulumi.Input.mapOptionalInputValue<HadoopClusterMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<HadoopClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'privateLinkConfiguration': ?pulumi.Input.mapOptionalInputValue<HadoopClusterPrivateLinkConfiguration, Map<String, dynamic>>(privateLinkConfiguration, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'roles': ?pulumi.Input.mapOptionalInputValue<HadoopClusterRoles, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<HadoopClusterSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'sshEndpoint': ?sshEndpoint,
      'storageAccountGen2': ?pulumi.Input.mapOptionalInputValue<HadoopClusterStorageAccountGen2, Map<String, dynamic>>(storageAccountGen2, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<HadoopClusterStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<HadoopClusterStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tier': ?tier,
      'tlsMinVersion': ?tlsMinVersion,
    };
  }

  factory HadoopClusterState.fromMap(Map<String, dynamic> map) {
    return HadoopClusterState(
      clusterVersion: map['clusterVersion'] == null ? null : pulumi.Output.create<String>(map['clusterVersion'] as String),
      componentVersion: map['componentVersion'] == null ? null : pulumi.Output.create<HadoopClusterComponentVersion>(HadoopClusterComponentVersion.fromMap((map['componentVersion'] as Map).cast<String, dynamic>())),
      computeIsolation: map['computeIsolation'] == null ? null : pulumi.Output.create<HadoopClusterComputeIsolation>(HadoopClusterComputeIsolation.fromMap((map['computeIsolation'] as Map).cast<String, dynamic>())),
      diskEncryptions: map['diskEncryptions'] == null ? null : pulumi.Output.create<List<HadoopClusterDiskEncryption>>(pulumi.Input.decodeList<HadoopClusterDiskEncryption>(map['diskEncryptions'], (value) => HadoopClusterDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))),
      extension: map['extension'] == null ? null : pulumi.Output.create<HadoopClusterExtension>(HadoopClusterExtension.fromMap((map['extension'] as Map).cast<String, dynamic>())),
      gateway: map['gateway'] == null ? null : pulumi.Output.create<HadoopClusterGateway>(HadoopClusterGateway.fromMap((map['gateway'] as Map).cast<String, dynamic>())),
      httpsEndpoint: map['httpsEndpoint'] == null ? null : pulumi.Output.create<String>(map['httpsEndpoint'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metastores: map['metastores'] == null ? null : pulumi.Output.create<HadoopClusterMetastores>(HadoopClusterMetastores.fromMap((map['metastores'] as Map).cast<String, dynamic>())),
      monitor: map['monitor'] == null ? null : pulumi.Output.create<HadoopClusterMonitor>(HadoopClusterMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<HadoopClusterNetwork>(HadoopClusterNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())),
      privateLinkConfiguration: map['privateLinkConfiguration'] == null ? null : pulumi.Output.create<HadoopClusterPrivateLinkConfiguration>(HadoopClusterPrivateLinkConfiguration.fromMap((map['privateLinkConfiguration'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roles: map['roles'] == null ? null : pulumi.Output.create<HadoopClusterRoles>(HadoopClusterRoles.fromMap((map['roles'] as Map).cast<String, dynamic>())),
      securityProfile: map['securityProfile'] == null ? null : pulumi.Output.create<HadoopClusterSecurityProfile>(HadoopClusterSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())),
      sshEndpoint: map['sshEndpoint'] == null ? null : pulumi.Output.create<String>(map['sshEndpoint'] as String),
      storageAccountGen2: map['storageAccountGen2'] == null ? null : pulumi.Output.create<HadoopClusterStorageAccountGen2>(HadoopClusterStorageAccountGen2.fromMap((map['storageAccountGen2'] as Map).cast<String, dynamic>())),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Output.create<List<HadoopClusterStorageAccount>>(pulumi.Input.decodeList<HadoopClusterStorageAccount>(map['storageAccounts'], (value) => HadoopClusterStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
      tlsMinVersion: map['tlsMinVersion'] == null ? null : pulumi.Output.create<String>(map['tlsMinVersion'] as String),
    );
  }
}

