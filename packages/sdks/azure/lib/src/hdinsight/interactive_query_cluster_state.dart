// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interactive_query_cluster_component_version.dart';
import 'interactive_query_cluster_compute_isolation.dart';
import 'interactive_query_cluster_disk_encryption.dart';
import 'interactive_query_cluster_extension.dart';
import 'interactive_query_cluster_gateway.dart';
import 'interactive_query_cluster_metastores.dart';
import 'interactive_query_cluster_monitor.dart';
import 'interactive_query_cluster_network.dart';
import 'interactive_query_cluster_private_link_configuration.dart';
import 'interactive_query_cluster_roles.dart';
import 'interactive_query_cluster_security_profile.dart';
import 'interactive_query_cluster_storage_account.dart';
import 'interactive_query_cluster_storage_account_gen2.dart';

/// Input properties used for looking up and filtering InteractiveQueryCluster resources.
class InteractiveQueryClusterState {
  /// Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterVersion;

  /// A `component_version` block as defined below.
  final pulumi.Input<InteractiveQueryClusterComponentVersion>? componentVersion;

  /// A `compute_isolation` block as defined below.
  final pulumi.Input<InteractiveQueryClusterComputeIsolation>? computeIsolation;

  /// A `disk_encryption` block as defined below.
  final pulumi.Input<List<InteractiveQueryClusterDiskEncryption>>?
  diskEncryptions;

  /// Whether encryption in transit is enabled for this Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? encryptionInTransitEnabled;

  /// An `extension` block as defined below.
  final pulumi.Input<InteractiveQueryClusterExtension>? extension;

  /// A `gateway` block as defined below.
  final pulumi.Input<InteractiveQueryClusterGateway>? gateway;

  /// The HTTPS Connectivity Endpoint for this HDInsight Interactive Query Cluster.
  final pulumi.Input<String>? httpsEndpoint;

  /// Specifies the Azure Region which this HDInsight Interactive Query Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// A `metastores` block as defined below.
  final pulumi.Input<InteractiveQueryClusterMetastores>? metastores;

  /// A `monitor` block as defined below.
  final pulumi.Input<InteractiveQueryClusterMonitor>? monitor;

  /// Specifies the name for this HDInsight Interactive Query Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// A `network` block as defined below.
  final pulumi.Input<InteractiveQueryClusterNetwork>? network;

  /// A `private_link_configuration` block as defined below.
  final pulumi.Input<InteractiveQueryClusterPrivateLinkConfiguration>?
  privateLinkConfiguration;

  /// Specifies the name of the Resource Group in which this HDInsight Interactive Query Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// A `roles` block as defined below.
  final pulumi.Input<InteractiveQueryClusterRoles>? roles;

  /// A `security_profile` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<InteractiveQueryClusterSecurityProfile>? securityProfile;

  /// The SSH Connectivity Endpoint for this HDInsight Interactive Query Cluster.
  final pulumi.Input<String>? sshEndpoint;

  /// A `storage_account_gen2` block as defined below.
  final pulumi.Input<InteractiveQueryClusterStorageAccountGen2>?
  storageAccountGen2;

  /// One or more `storage_account` block as defined below.
  final pulumi.Input<List<InteractiveQueryClusterStorageAccount>>?
  storageAccounts;

  /// A map of Tags which should be assigned to this HDInsight Interactive Query Cluster.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies the Tier which should be used for this HDInsight Interactive Query Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tier;

  /// The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Starting on June 30, 2020, Azure HDInsight will enforce TLS 1.2 or later versions for all HTTPS connections. For more information, see [Azure HDInsight TLS 1.2 Enforcement](https://azure.microsoft.com/en-us/updates/azure-hdinsight-tls-12-enforcement/).
  final pulumi.Input<String>? tlsMinVersion;

  /// Creates a new [InteractiveQueryClusterState].
  /// [clusterVersion] Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created.
  /// [componentVersion] A `component_version` block as defined below.
  /// [computeIsolation] A `compute_isolation` block as defined below.
  /// [diskEncryptions] A `disk_encryption` block as defined below.
  /// [encryptionInTransitEnabled] Whether encryption in transit is enabled for this Cluster. Changing this forces a new resource to be created.
  /// [extension] An `extension` block as defined below.
  /// [gateway] A `gateway` block as defined below.
  /// [httpsEndpoint] The HTTPS Connectivity Endpoint for this HDInsight Interactive Query Cluster.
  /// [location] Specifies the Azure Region which this HDInsight Interactive Query Cluster should exist. Changing this forces a new resource to be created.
  /// [metastores] A `metastores` block as defined below.
  /// [monitor] A `monitor` block as defined below.
  /// [name] Specifies the name for this HDInsight Interactive Query Cluster. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below.
  /// [privateLinkConfiguration] A `private_link_configuration` block as defined below.
  /// [resourceGroupName] Specifies the name of the Resource Group in which this HDInsight Interactive Query Cluster should exist. Changing this forces a new resource to be created.
  /// [roles] A `roles` block as defined below.
  /// [securityProfile] A `security_profile` block as defined below. Changing this forces a new resource to be created.
  /// [sshEndpoint] The SSH Connectivity Endpoint for this HDInsight Interactive Query Cluster.
  /// [storageAccountGen2] A `storage_account_gen2` block as defined below.
  /// [storageAccounts] One or more `storage_account` block as defined below.
  /// [tags] A map of Tags which should be assigned to this HDInsight Interactive Query Cluster.
  /// [tier] Specifies the Tier which should be used for this HDInsight Interactive Query Cluster. Possible values are `Standard` or `Premium`. Changing this forces a new resource to be created.
  /// [tlsMinVersion] The minimal supported TLS version. Possible values are 1.0, 1.1 or 1.2. Changing this forces a new resource to be created.
  InteractiveQueryClusterState({
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterVersion': ?clusterVersion,
      'componentVersion':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterComponentVersion,
            Map<String, dynamic>
          >(componentVersion, (value) => value.toMap()),
      'computeIsolation':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterComputeIsolation,
            Map<String, dynamic>
          >(computeIsolation, (value) => value.toMap()),
      'diskEncryptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<InteractiveQueryClusterDiskEncryption>,
            List<Map<String, dynamic>>
          >(
            diskEncryptions,
            (value) =>
                pulumi.Input.encodeList<
                  InteractiveQueryClusterDiskEncryption,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'encryptionInTransitEnabled': ?encryptionInTransitEnabled,
      'extension':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterExtension,
            Map<String, dynamic>
          >(extension, (value) => value.toMap()),
      'gateway':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterGateway,
            Map<String, dynamic>
          >(gateway, (value) => value.toMap()),
      'httpsEndpoint': ?httpsEndpoint,
      'location': ?location,
      'metastores':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterMetastores,
            Map<String, dynamic>
          >(metastores, (value) => value.toMap()),
      'monitor':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterMonitor,
            Map<String, dynamic>
          >(monitor, (value) => value.toMap()),
      'name': ?name,
      'network':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterNetwork,
            Map<String, dynamic>
          >(network, (value) => value.toMap()),
      'privateLinkConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterPrivateLinkConfiguration,
            Map<String, dynamic>
          >(privateLinkConfiguration, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'roles':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterRoles,
            Map<String, dynamic>
          >(roles, (value) => value.toMap()),
      'securityProfile':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterSecurityProfile,
            Map<String, dynamic>
          >(securityProfile, (value) => value.toMap()),
      'sshEndpoint': ?sshEndpoint,
      'storageAccountGen2':
          ?pulumi.Input.mapOptionalInputValue<
            InteractiveQueryClusterStorageAccountGen2,
            Map<String, dynamic>
          >(storageAccountGen2, (value) => value.toMap()),
      'storageAccounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InteractiveQueryClusterStorageAccount>,
            List<Map<String, dynamic>>
          >(
            storageAccounts,
            (value) =>
                pulumi.Input.encodeList<
                  InteractiveQueryClusterStorageAccount,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
      'tier': ?tier,
      'tlsMinVersion': ?tlsMinVersion,
    };
  }

  factory InteractiveQueryClusterState.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterState(
      clusterVersion: (() {
        final guardedValue = map['clusterVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      componentVersion: (() {
        final guardedValue = map['componentVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterComponentVersion.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      computeIsolation: (() {
        final guardedValue = map['computeIsolation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterComputeIsolation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      diskEncryptions: (() {
        final guardedValue = map['diskEncryptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InteractiveQueryClusterDiskEncryption>(
            guardedValue,
            (value) => InteractiveQueryClusterDiskEncryption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      encryptionInTransitEnabled: (() {
        final guardedValue = map['encryptionInTransitEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      extension: (() {
        final guardedValue = map['extension'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterExtension.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gateway: (() {
        final guardedValue = map['gateway'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterGateway.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      httpsEndpoint: (() {
        final guardedValue = map['httpsEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metastores: (() {
        final guardedValue = map['metastores'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterMetastores.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      monitor: (() {
        final guardedValue = map['monitor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterMonitor.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterNetwork.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateLinkConfiguration: (() {
        final guardedValue = map['privateLinkConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterPrivateLinkConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roles: (() {
        final guardedValue = map['roles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterRoles.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      securityProfile: (() {
        final guardedValue = map['securityProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterSecurityProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sshEndpoint: (() {
        final guardedValue = map['sshEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountGen2: (() {
        final guardedValue = map['storageAccountGen2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InteractiveQueryClusterStorageAccountGen2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      storageAccounts: (() {
        final guardedValue = map['storageAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InteractiveQueryClusterStorageAccount>(
            guardedValue,
            (value) => InteractiveQueryClusterStorageAccount.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tlsMinVersion: (() {
        final guardedValue = map['tlsMinVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
