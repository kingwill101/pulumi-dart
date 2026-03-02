// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_gce_cluster_config_confidential_instance_config.dart';
import 'cluster_cluster_config_gce_cluster_config_node_group_affinity.dart';
import 'cluster_cluster_config_gce_cluster_config_reservation_affinity.dart';
import 'cluster_cluster_config_gce_cluster_config_shielded_instance_config.dart';

class ClusterClusterConfigGceClusterConfig {
  /// Confidential Instance Config for clusters using [Confidential VMs](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/confidential-compute)
  final pulumi.Input<ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig>? confidentialInstanceConfig;
  /// By default, clusters are not restricted to internal IP addresses,
  /// and will have ephemeral external IP addresses assigned to each instance. If set to true, all
  /// instances in the cluster will only have internal IP addresses. Note: Private Google Access
  /// (also known as `privateIpGoogleAccess`) must be enabled on the subnetwork that the cluster
  /// will be launched in.
  final pulumi.Input<bool>? internalIpOnly;
  /// A map of the Compute Engine metadata entries to add to all instances
  /// (see [Project and instance metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name or self_link of the Google Compute Engine
  /// network to the cluster will be part of. Conflicts with `subnetwork`.
  /// If neither is specified, this defaults to the "default" network.
  final pulumi.Input<String>? network;
  /// Node Group Affinity for sole-tenant clusters.
  final pulumi.Input<ClusterClusterConfigGceClusterConfigNodeGroupAffinity>? nodeGroupAffinity;
  /// Reservation Affinity for consuming zonal reservation.
  final pulumi.Input<ClusterClusterConfigGceClusterConfigReservationAffinity>? reservationAffinity;
  /// A map of resource manager tags to add to all instances.
  /// Keys must be in the format `tagKeys/{tag_key_id}` and values in the format `tagValues/{tag_value_id}`
  /// (see [Secure tags](https://cloud.google.com/dataproc/docs/guides/use-secure-tags)).
  final pulumi.Input<Map<String, String>>? resourceManagerTags;
  /// The service account to be used by the Node VMs.
  /// If not specified, the "default" service account is used.
  final pulumi.Input<String>? serviceAccount;
  /// The set of Google API scopes
  /// to be made available on all of the node VMs under the `service_account`
  /// specified. Both OAuth2 URLs and gcloud
  /// short names are supported. To allow full access to all Cloud APIs, use the
  /// `cloud-platform` scope. See a complete list of scopes [here](https://cloud.google.com/sdk/gcloud/reference/alpha/compute/instances/set-scopes#--scopes).
  final pulumi.Input<List<String>>? serviceAccountScopes;
  /// Shielded Instance Config for clusters using [Compute Engine Shielded VMs](https://cloud.google.com/security/shielded-cloud/shielded-vm).
  ///
  /// - - -
  final pulumi.Input<ClusterClusterConfigGceClusterConfigShieldedInstanceConfig>? shieldedInstanceConfig;
  /// The name or self_link of the Google Compute Engine
  /// subnetwork the cluster will be part of. Conflicts with `network`.
  final pulumi.Input<String>? subnetwork;
  /// The list of instance tags applied to instances in the cluster.
  /// Tags are used to identify valid sources or targets for network firewalls.
  final pulumi.Input<List<String>>? tags;
  /// The GCP zone where your data is stored and used (i.e. where
  /// the master and the worker nodes will be created in). If `region` is set to 'global' (default)
  /// then `zone` is mandatory, otherwise GCP is able to make use of [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/auto-zone)
  /// to determine this automatically for you.
  /// Note: This setting additionally determines and restricts
  /// which computing resources are available for use with other configs such as
  /// `cluster_config.master_config.machine_type` and `cluster_config.worker_config.machine_type`.
  final pulumi.Input<String>? zone;

  /// Creates a new [ClusterClusterConfigGceClusterConfig].
  /// [confidentialInstanceConfig] Confidential Instance Config for clusters using [Confidential VMs](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/confidential-compute)
  /// [internalIpOnly] By default, clusters are not restricted to internal IP addresses,
  /// [metadata] A map of the Compute Engine metadata entries to add to all instances
  /// [network] The name or self_link of the Google Compute Engine
  /// [nodeGroupAffinity] Node Group Affinity for sole-tenant clusters.
  /// [reservationAffinity] Reservation Affinity for consuming zonal reservation.
  /// [resourceManagerTags] A map of resource manager tags to add to all instances.
  /// [serviceAccount] The service account to be used by the Node VMs.
  /// [serviceAccountScopes] The set of Google API scopes
  /// [shieldedInstanceConfig] Shielded Instance Config for clusters using [Compute Engine Shielded VMs](https://cloud.google.com/security/shielded-cloud/shielded-vm).
  /// [subnetwork] The name or self_link of the Google Compute Engine
  /// [tags] The list of instance tags applied to instances in the cluster.
  /// [zone] The GCP zone where your data is stored and used (i.e. where
  ClusterClusterConfigGceClusterConfig({
    this.confidentialInstanceConfig,
    this.internalIpOnly,
    this.metadata,
    this.network,
    this.nodeGroupAffinity,
    this.reservationAffinity,
    this.resourceManagerTags,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.subnetwork,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'internalIpOnly': ?internalIpOnly,
      'metadata': ?metadata,
      'network': ?network,
      'nodeGroupAffinity': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigGceClusterConfigNodeGroupAffinity, Map<String, dynamic>>(nodeGroupAffinity, (value) => value.toMap()),
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigGceClusterConfigReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourceManagerTags': ?resourceManagerTags,
      'serviceAccount': ?serviceAccount,
      'serviceAccountScopes': ?serviceAccountScopes,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigGceClusterConfigShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'subnetwork': ?subnetwork,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory ClusterClusterConfigGceClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigGceClusterConfig(
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : (ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig.fromMap((map['confidentialInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      internalIpOnly: map['internalIpOnly'] == null ? null : (map['internalIpOnly'] as bool).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      nodeGroupAffinity: map['nodeGroupAffinity'] == null ? null : (ClusterClusterConfigGceClusterConfigNodeGroupAffinity.fromMap((map['nodeGroupAffinity'] as Map).cast<String, dynamic>())).input(),
      reservationAffinity: map['reservationAffinity'] == null ? null : (ClusterClusterConfigGceClusterConfigReservationAffinity.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>())).input(),
      resourceManagerTags: map['resourceManagerTags'] == null ? null : ((map['resourceManagerTags'] as Map).cast<String, String>()).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      serviceAccountScopes: map['serviceAccountScopes'] == null ? null : ((map['serviceAccountScopes'] as List).cast<String>()).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (ClusterClusterConfigGceClusterConfigShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

