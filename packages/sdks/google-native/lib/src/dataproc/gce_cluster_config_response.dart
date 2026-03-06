// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_instance_config_response.dart';
import 'node_group_affinity_response.dart';
import 'reservation_affinity_response.dart';
import 'shielded_instance_config_response.dart';

/// Common config settings for resources of Compute Engine cluster instances, applicable to all instances in the cluster.
class GceClusterConfigResponse {
  /// Optional. Confidential Instance Config for clusters using Confidential VMs (https://cloud.google.com/compute/confidential-vm/docs).
  final pulumi.Input<ConfidentialInstanceConfigResponse> confidentialInstanceConfig;
  /// Optional. If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This internal_ip_only restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.
  final pulumi.Input<bool> internalIpOnly;
  /// Optional. The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  final pulumi.Input<Map<String, String>> metadata;
  /// Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither network_uri nor subnetwork_uri is specified, the "default" network of the project is used, if it exists. Cannot be a "Custom Subnet Network" (see Using Subnetworks (https://cloud.google.com/compute/docs/subnetworks) for more information).A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/global/networks/default projects/[project_id]/global/networks/default default
  final pulumi.Input<String> networkUri;
  /// Optional. Node Group Affinity for sole-tenant clusters.
  final pulumi.Input<NodeGroupAffinityResponse> nodeGroupAffinity;
  /// Optional. The type of IPv6 access for a cluster.
  final pulumi.Input<String> privateIpv6GoogleAccess;
  /// Optional. Reservation Affinity for consuming Zonal reservation.
  final pulumi.Input<ReservationAffinityResponse> reservationAffinity;
  /// Optional. The Dataproc service account (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc) (also see VM Data Plane identity (https://cloud.google.com/dataproc/docs/concepts/iam/dataproc-principals#vm_service_account_data_plane_identity)) used by Dataproc cluster VM instances to access Google Cloud Platform services.If not specified, the Compute Engine default service account (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final pulumi.Input<String> serviceAccount;
  /// Optional. The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: https://www.googleapis.com/auth/cloud.useraccounts.readonly https://www.googleapis.com/auth/devstorage.read_write https://www.googleapis.com/auth/logging.writeIf no scopes are specified, the following defaults are also provided: https://www.googleapis.com/auth/bigquery https://www.googleapis.com/auth/bigtable.admin.table https://www.googleapis.com/auth/bigtable.data https://www.googleapis.com/auth/devstorage.full_control
  final pulumi.Input<List<String>> serviceAccountScopes;
  /// Optional. Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
  final pulumi.Input<ShieldedInstanceConfigResponse> shieldedInstanceConfig;
  /// Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/[region]/subnetworks/sub0 projects/[project_id]/regions/[region]/subnetworks/sub0 sub0
  final pulumi.Input<String> subnetworkUri;
  /// The Compute Engine tags to add to all instances (see Tagging instances (https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final pulumi.Input<List<String>> tags;
  /// Optional. The Compute Engine zone where the Dataproc cluster will be located. If omitted, the service will pick a zone in the cluster's Compute Engine region. On a get request, zone will always be present.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone] projects/[project_id]/zones/[zone] [zone]
  final pulumi.Input<String> zoneUri;

  /// Creates a new [GceClusterConfigResponse].
  /// [confidentialInstanceConfig] Optional. Confidential Instance Config for clusters using Confidential VMs (https://cloud.google.com/compute/confidential-vm/docs).
  /// [internalIpOnly] Optional. If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This internal_ip_only restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.
  /// [metadata] Optional. The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  /// [networkUri] Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither network_uri nor subnetwork_uri is specified, the "default" network of the project is used, if it exists. Cannot be a "Custom Subnet Network" (see Using Subnetworks (https://cloud.google.com/compute/docs/subnetworks) for more information).A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/global/networks/default projects/[project_id]/global/networks/default default
  /// [nodeGroupAffinity] Optional. Node Group Affinity for sole-tenant clusters.
  /// [privateIpv6GoogleAccess] Optional. The type of IPv6 access for a cluster.
  /// [reservationAffinity] Optional. Reservation Affinity for consuming Zonal reservation.
  /// [serviceAccount] Optional. The Dataproc service account (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc) (also see VM Data Plane identity (https://cloud.google.com/dataproc/docs/concepts/iam/dataproc-principals#vm_service_account_data_plane_identity)) used by Dataproc cluster VM instances to access Google Cloud Platform services.If not specified, the Compute Engine default service account (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  /// [serviceAccountScopes] Optional. The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: https://www.googleapis.com/auth/cloud.useraccounts.readonly https://www.googleapis.com/auth/devstorage.read_write https://www.googleapis.com/auth/logging.writeIf no scopes are specified, the following defaults are also provided: https://www.googleapis.com/auth/bigquery https://www.googleapis.com/auth/bigtable.admin.table https://www.googleapis.com/auth/bigtable.data https://www.googleapis.com/auth/devstorage.full_control
  /// [shieldedInstanceConfig] Optional. Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
  /// [subnetworkUri] Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/[region]/subnetworks/sub0 projects/[project_id]/regions/[region]/subnetworks/sub0 sub0
  /// [tags] The Compute Engine tags to add to all instances (see Tagging instances (https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  /// [zoneUri] Optional. The Compute Engine zone where the Dataproc cluster will be located. If omitted, the service will pick a zone in the cluster's Compute Engine region. On a get request, zone will always be present.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone] projects/[project_id]/zones/[zone] [zone]
  const GceClusterConfigResponse({
    required this.confidentialInstanceConfig,
    required this.internalIpOnly,
    required this.metadata,
    required this.networkUri,
    required this.nodeGroupAffinity,
    required this.privateIpv6GoogleAccess,
    required this.reservationAffinity,
    required this.serviceAccount,
    required this.serviceAccountScopes,
    required this.shieldedInstanceConfig,
    required this.subnetworkUri,
    required this.tags,
    required this.zoneUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceConfig': pulumi.Input.mapInputValue<ConfidentialInstanceConfigResponse, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'internalIpOnly': internalIpOnly,
      'metadata': metadata,
      'networkUri': networkUri,
      'nodeGroupAffinity': pulumi.Input.mapInputValue<NodeGroupAffinityResponse, Map<String, dynamic>>(nodeGroupAffinity, (value) => value.toMap()),
      'privateIpv6GoogleAccess': privateIpv6GoogleAccess,
      'reservationAffinity': pulumi.Input.mapInputValue<ReservationAffinityResponse, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'serviceAccount': serviceAccount,
      'serviceAccountScopes': serviceAccountScopes,
      'shieldedInstanceConfig': pulumi.Input.mapInputValue<ShieldedInstanceConfigResponse, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'subnetworkUri': subnetworkUri,
      'tags': tags,
      'zoneUri': zoneUri,
    };
  }

  factory GceClusterConfigResponse.fromMap(Map<String, dynamic> map) {
    return GceClusterConfigResponse(
      confidentialInstanceConfig: pulumi.Input.fromValue(ConfidentialInstanceConfigResponse.fromMap((map['confidentialInstanceConfig']! as Map).cast<String, dynamic>())),
      internalIpOnly: pulumi.Input.fromValue(map['internalIpOnly'] as bool),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      networkUri: pulumi.Input.fromValue(map['networkUri'] as String),
      nodeGroupAffinity: pulumi.Input.fromValue(NodeGroupAffinityResponse.fromMap((map['nodeGroupAffinity']! as Map).cast<String, dynamic>())),
      privateIpv6GoogleAccess: pulumi.Input.fromValue(map['privateIpv6GoogleAccess'] as String),
      reservationAffinity: pulumi.Input.fromValue(ReservationAffinityResponse.fromMap((map['reservationAffinity']! as Map).cast<String, dynamic>())),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      serviceAccountScopes: pulumi.Input.fromValue((map['serviceAccountScopes'] as List).cast<String>()),
      shieldedInstanceConfig: pulumi.Input.fromValue(ShieldedInstanceConfigResponse.fromMap((map['shieldedInstanceConfig']! as Map).cast<String, dynamic>())),
      subnetworkUri: pulumi.Input.fromValue(map['subnetworkUri'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      zoneUri: pulumi.Input.fromValue(map['zoneUri'] as String),
    );
  }
}

