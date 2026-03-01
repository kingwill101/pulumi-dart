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

/// {@template pulumi_hdinsight_h_base_cluster_hbase_cluster_args_doc}
/// The set of arguments for HBaseCluster.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_h_base_cluster_hbase_cluster_args_doc}
class HBaseClusterArgs {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterVersion;
  /// A `component_version` block as defined below.
  final pulumi.Input<HBaseClusterComponentVersion> componentVersion;
  /// A `compute_isolation` block as defined below.
  final pulumi.Input<HBaseClusterComputeIsolation>? computeIsolation;
  /// One or more `disk_encryption` block as defined below.
  final pulumi.Input<List<HBaseClusterDiskEncryption>>? diskEncryptions;
  /// An `extension` block as defined below.
  final pulumi.Input<HBaseClusterExtension>? extension;
  /// A `gateway` block as defined below.
  final pulumi.Input<HBaseClusterGateway> gateway;
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
  final pulumi.Input<String> resourceGroupName;
  /// A `roles` block as defined below.
  final pulumi.Input<HBaseClusterRoles> roles;
  /// A `security_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<HBaseClusterSecurityProfile>? securityProfile;
  /// A `storage_account_gen2` block as defined below.
  final pulumi.Input<HBaseClusterStorageAccountGen2>? storageAccountGen2;
  /// One or more `storage_account` block as defined below.
  final pulumi.Input<List<HBaseClusterStorageAccount>>? storageAccounts;
  /// A map of Tags which should be assigned to this HDInsight HBase Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Tier which should be used for this HDInsight HBase Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String> tier;
  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  final pulumi.Input<String>? tlsMinVersion;

  /// Creates a new [HBaseClusterArgs].
  /// [clusterVersion] Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  /// [componentVersion] A `component_version` block as defined below.
  /// [computeIsolation] A `compute_isolation` block as defined below.
  /// [diskEncryptions] One or more `disk_encryption` block as defined below.
  /// [extension] An `extension` block as defined below.
  /// [gateway] A `gateway` block as defined below.
  /// [location] Specifies the Azure Region which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created.
  /// [metastores] A `metastores` block as defined below.
  /// [monitor] A `monitor` block as defined below.
  /// [name] Specifies the name for this HDInsight HBase Cluster. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below.
  /// [privateLinkConfiguration] A `private_link_configuration` block as defined below.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight HBase Cluster should exist. Changing this forces a new resource to be created.
  /// [roles] A `roles` block as defined below.
  /// [securityProfile] A `security_profile` block as defined below. Changing this forces a new resource to be created.
  /// [storageAccountGen2] A `storage_account_gen2` block as defined below.
  /// [storageAccounts] One or more `storage_account` block as defined below.
  /// [tags] A map of Tags which should be assigned to this HDInsight HBase Cluster.
  /// [tier] Specifies the Tier which should be used for this HDInsight HBase Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  /// [tlsMinVersion] The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  HBaseClusterArgs({
    required pulumi.Output<String> clusterVersion,
    required pulumi.Output<HBaseClusterComponentVersion> componentVersion,
    pulumi.Output<HBaseClusterComputeIsolation>? computeIsolation,
    pulumi.Output<List<HBaseClusterDiskEncryption>>? diskEncryptions,
    pulumi.Output<HBaseClusterExtension>? extension,
    required pulumi.Output<HBaseClusterGateway> gateway,
    pulumi.Output<String>? location,
    pulumi.Output<HBaseClusterMetastores>? metastores,
    pulumi.Output<HBaseClusterMonitor>? monitor,
    pulumi.Output<String>? name,
    pulumi.Output<HBaseClusterNetwork>? network,
    pulumi.Output<HBaseClusterPrivateLinkConfiguration>? privateLinkConfiguration,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<HBaseClusterRoles> roles,
    pulumi.Output<HBaseClusterSecurityProfile>? securityProfile,
    pulumi.Output<HBaseClusterStorageAccountGen2>? storageAccountGen2,
    pulumi.Output<List<HBaseClusterStorageAccount>>? storageAccounts,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> tier,
    pulumi.Output<String>? tlsMinVersion,
  }) :
      clusterVersion = pulumi.Input.asInput<String>(clusterVersion),
      componentVersion = pulumi.Input.asInput<HBaseClusterComponentVersion>(componentVersion),
      computeIsolation = pulumi.Input.asOptionalInput<HBaseClusterComputeIsolation>(computeIsolation),
      diskEncryptions = pulumi.Input.asOptionalInput<List<HBaseClusterDiskEncryption>>(diskEncryptions),
      extension = pulumi.Input.asOptionalInput<HBaseClusterExtension>(extension),
      gateway = pulumi.Input.asInput<HBaseClusterGateway>(gateway),
      location = pulumi.Input.asOptionalInput<String>(location),
      metastores = pulumi.Input.asOptionalInput<HBaseClusterMetastores>(metastores),
      monitor = pulumi.Input.asOptionalInput<HBaseClusterMonitor>(monitor),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<HBaseClusterNetwork>(network),
      privateLinkConfiguration = pulumi.Input.asOptionalInput<HBaseClusterPrivateLinkConfiguration>(privateLinkConfiguration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roles = pulumi.Input.asInput<HBaseClusterRoles>(roles),
      securityProfile = pulumi.Input.asOptionalInput<HBaseClusterSecurityProfile>(securityProfile),
      storageAccountGen2 = pulumi.Input.asOptionalInput<HBaseClusterStorageAccountGen2>(storageAccountGen2),
      storageAccounts = pulumi.Input.asOptionalInput<List<HBaseClusterStorageAccount>>(storageAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tier = pulumi.Input.asInput<String>(tier),
      tlsMinVersion = pulumi.Input.asOptionalInput<String>(tlsMinVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterVersion': clusterVersion,
      'componentVersion': pulumi.Input.mapInputValue<HBaseClusterComponentVersion, Map<String, dynamic>>(componentVersion, (value) => value.toMap()),
      'computeIsolation': ?pulumi.Input.mapOptionalInputValue<HBaseClusterComputeIsolation, Map<String, dynamic>>(computeIsolation, (value) => value.toMap()),
      'diskEncryptions': ?pulumi.Input.mapOptionalInputValue<List<HBaseClusterDiskEncryption>, List<Map<String, dynamic>>>(diskEncryptions, (value) => pulumi.Input.encodeList<HBaseClusterDiskEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extension': ?pulumi.Input.mapOptionalInputValue<HBaseClusterExtension, Map<String, dynamic>>(extension, (value) => value.toMap()),
      'gateway': pulumi.Input.mapInputValue<HBaseClusterGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'location': ?location,
      'metastores': ?pulumi.Input.mapOptionalInputValue<HBaseClusterMetastores, Map<String, dynamic>>(metastores, (value) => value.toMap()),
      'monitor': ?pulumi.Input.mapOptionalInputValue<HBaseClusterMonitor, Map<String, dynamic>>(monitor, (value) => value.toMap()),
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<HBaseClusterNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'privateLinkConfiguration': ?pulumi.Input.mapOptionalInputValue<HBaseClusterPrivateLinkConfiguration, Map<String, dynamic>>(privateLinkConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'roles': pulumi.Input.mapInputValue<HBaseClusterRoles, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<HBaseClusterSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageAccountGen2': ?pulumi.Input.mapOptionalInputValue<HBaseClusterStorageAccountGen2, Map<String, dynamic>>(storageAccountGen2, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<HBaseClusterStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<HBaseClusterStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tier': tier,
      'tlsMinVersion': ?tlsMinVersion,
    };
  }

  factory HBaseClusterArgs.fromMap(Map<String, dynamic> map) {
    return HBaseClusterArgs(
      clusterVersion: pulumi.Output.create<String>(map['clusterVersion'] as String),
      componentVersion: pulumi.Output.create<HBaseClusterComponentVersion>(HBaseClusterComponentVersion.fromMap((map['componentVersion'] as Map).cast<String, dynamic>())),
      computeIsolation: map['computeIsolation'] == null ? null : pulumi.Output.create<HBaseClusterComputeIsolation>(HBaseClusterComputeIsolation.fromMap((map['computeIsolation'] as Map).cast<String, dynamic>())),
      diskEncryptions: map['diskEncryptions'] == null ? null : pulumi.Output.create<List<HBaseClusterDiskEncryption>>(pulumi.Input.decodeList<HBaseClusterDiskEncryption>(map['diskEncryptions'], (value) => HBaseClusterDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))),
      extension: map['extension'] == null ? null : pulumi.Output.create<HBaseClusterExtension>(HBaseClusterExtension.fromMap((map['extension'] as Map).cast<String, dynamic>())),
      gateway: pulumi.Output.create<HBaseClusterGateway>(HBaseClusterGateway.fromMap((map['gateway'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metastores: map['metastores'] == null ? null : pulumi.Output.create<HBaseClusterMetastores>(HBaseClusterMetastores.fromMap((map['metastores'] as Map).cast<String, dynamic>())),
      monitor: map['monitor'] == null ? null : pulumi.Output.create<HBaseClusterMonitor>(HBaseClusterMonitor.fromMap((map['monitor'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<HBaseClusterNetwork>(HBaseClusterNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())),
      privateLinkConfiguration: map['privateLinkConfiguration'] == null ? null : pulumi.Output.create<HBaseClusterPrivateLinkConfiguration>(HBaseClusterPrivateLinkConfiguration.fromMap((map['privateLinkConfiguration'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roles: pulumi.Output.create<HBaseClusterRoles>(HBaseClusterRoles.fromMap((map['roles'] as Map).cast<String, dynamic>())),
      securityProfile: map['securityProfile'] == null ? null : pulumi.Output.create<HBaseClusterSecurityProfile>(HBaseClusterSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())),
      storageAccountGen2: map['storageAccountGen2'] == null ? null : pulumi.Output.create<HBaseClusterStorageAccountGen2>(HBaseClusterStorageAccountGen2.fromMap((map['storageAccountGen2'] as Map).cast<String, dynamic>())),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Output.create<List<HBaseClusterStorageAccount>>(pulumi.Input.decodeList<HBaseClusterStorageAccount>(map['storageAccounts'], (value) => HBaseClusterStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tier: pulumi.Output.create<String>(map['tier'] as String),
      tlsMinVersion: map['tlsMinVersion'] == null ? null : pulumi.Output.create<String>(map['tlsMinVersion'] as String),
    );
  }
}

