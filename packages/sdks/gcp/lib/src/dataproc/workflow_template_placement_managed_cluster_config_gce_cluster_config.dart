// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_gce_cluster_config_node_group_affinity.dart';
import 'workflow_template_placement_managed_cluster_config_gce_cluster_config_reservation_affinity.dart';
import 'workflow_template_placement_managed_cluster_config_gce_cluster_config_shielded_instance_config.dart';

class WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig {
  /// If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This `internal_ip_only` restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.
  final pulumi.Input<bool>? internalIpOnly;
  /// The Compute Engine metadata entries to add to all instances (see [About VM metadata](https://cloud.google.com/compute/docs/metadata/overview)).
  final pulumi.Input<Map<String, String>>? metadata;
  /// The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither `network_uri` nor `subnetwork_uri` is specified, the "default" network of the project is used, if it exists. Cannot be a "Custom Subnet Network" (see /regions/global/default` * `default`
  final pulumi.Input<String>? network;
  /// Node Group Affinity for sole-tenant clusters.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity>? nodeGroupAffinity;
  /// The type of IPv6 access for a cluster. Possible values: PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED, INHERIT_FROM_SUBNETWORK, OUTBOUND, BIDIRECTIONAL
  final pulumi.Input<String>? privateIpv6GoogleAccess;
  /// Reservation Affinity for consuming Zonal reservation.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity>? reservationAffinity;
  /// The (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final pulumi.Input<String>? serviceAccount;
  /// The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: * https://www.googleapis.com/auth/cloud.useraccounts.readonly * https://www.googleapis.com/auth/devstorage.read_write * https://www.googleapis.com/auth/logging.write If no scopes are specified, the following defaults are also provided: * https://www.googleapis.com/auth/bigquery * https://www.googleapis.com/auth/bigtable.admin.table * https://www.googleapis.com/auth/bigtable.data * https://www.googleapis.com/auth/devstorage.full_control
  final pulumi.Input<List<String>>? serviceAccountScopes;
  /// Shielded Instance Config for clusters using [Compute Engine Shielded VMs](https://cloud.google.com/security/shielded-cloud/shielded-vm). Structure defined below.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig>? shieldedInstanceConfig;
  /// The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects//regions/us-east1/subnetworks/sub0` * `sub0`
  final pulumi.Input<String>? subnetwork;
  /// The Compute Engine tags to add to all instances (see [Manage tags for resources](https://cloud.google.com/compute/docs/tag-resources)).
  final pulumi.Input<List<String>>? tags;
  /// The zone where the Compute Engine cluster will be located. On a create request, it is required in the "global" region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/` * `us-central1-f`
  final pulumi.Input<String>? zone;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig].
  /// [internalIpOnly] If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This `internal_ip_only` restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.
  /// [metadata] The Compute Engine metadata entries to add to all instances (see [About VM metadata](https://cloud.google.com/compute/docs/metadata/overview)).
  /// [network] The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither `network_uri` nor `subnetwork_uri` is specified, the "default" network of the project is used, if it exists. Cannot be a "Custom Subnet Network" (see /regions/global/default` * `default`
  /// [nodeGroupAffinity] Node Group Affinity for sole-tenant clusters.
  /// [privateIpv6GoogleAccess] The type of IPv6 access for a cluster. Possible values: PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED, INHERIT_FROM_SUBNETWORK, OUTBOUND, BIDIRECTIONAL
  /// [reservationAffinity] Reservation Affinity for consuming Zonal reservation.
  /// [serviceAccount] The (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  /// [serviceAccountScopes] The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: * https://www.googleapis.com/auth/cloud.useraccounts.readonly * https://www.googleapis.com/auth/devstorage.read_write * https://www.googleapis.com/auth/logging.write If no scopes are specified, the following defaults are also provided: * https://www.googleapis.com/auth/bigquery * https://www.googleapis.com/auth/bigtable.admin.table * https://www.googleapis.com/auth/bigtable.data * https://www.googleapis.com/auth/devstorage.full_control
  /// [shieldedInstanceConfig] Shielded Instance Config for clusters using [Compute Engine Shielded VMs](https://cloud.google.com/security/shielded-cloud/shielded-vm). Structure defined below.
  /// [subnetwork] The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects//regions/us-east1/subnetworks/sub0` * `sub0`
  /// [tags] The Compute Engine tags to add to all instances (see [Manage tags for resources](https://cloud.google.com/compute/docs/tag-resources)).
  /// [zone] The zone where the Compute Engine cluster will be located. On a create request, it is required in the "global" region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/` * `us-central1-f`
  WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig({
    this.internalIpOnly,
    this.metadata,
    this.network,
    this.nodeGroupAffinity,
    this.privateIpv6GoogleAccess,
    this.reservationAffinity,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.subnetwork,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalIpOnly': ?internalIpOnly,
      'metadata': ?metadata,
      'network': ?network,
      'nodeGroupAffinity': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity, Map<String, dynamic>>(nodeGroupAffinity, (value) => value.toMap()),
      'privateIpv6GoogleAccess': ?privateIpv6GoogleAccess,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'serviceAccountScopes': ?serviceAccountScopes,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'subnetwork': ?subnetwork,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig(
      internalIpOnly: map['internalIpOnly'] == null ? null : (map['internalIpOnly'] as bool).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      nodeGroupAffinity: map['nodeGroupAffinity'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigNodeGroupAffinity.fromMap((map['nodeGroupAffinity'] as Map).cast<String, dynamic>())).input(),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null ? null : (map['privateIpv6GoogleAccess'] as String).input(),
      reservationAffinity: map['reservationAffinity'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>())).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      serviceAccountScopes: map['serviceAccountScopes'] == null ? null : ((map['serviceAccountScopes'] as List).cast<String>()).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

