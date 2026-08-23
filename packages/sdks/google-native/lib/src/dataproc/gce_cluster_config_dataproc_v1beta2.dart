// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_cluster_config_private_ipv6_google_access_dataproc_v1beta2.dart';
import 'node_group_affinity_dataproc_v1beta2.dart';
import 'reservation_affinity_dataproc_v1beta2.dart';
import 'shielded_instance_config_dataproc_v1beta2.dart';

/// Common config settings for resources of Compute Engine cluster instances, applicable to all instances in the cluster.
class GceClusterConfigDataprocV1beta2 {
  /// Optional. If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This internal_ip_only restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.
  final pulumi.Input<bool>? internalIpOnly;
  /// The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  final pulumi.Input<Map<String, String>>? metadata;
  /// Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither network_uri nor subnetwork_uri is specified, the "default" network of the project is used, if it exists. Cannot be a "Custom Subnet Network" (see Using Subnetworks (https://cloud.google.com/compute/docs/subnetworks) for more information).A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/global/default projects/[project_id]/regions/global/default default
  final pulumi.Input<String>? networkUri;
  /// Optional. Node Group Affinity for sole-tenant clusters.
  final pulumi.Input<NodeGroupAffinityDataprocV1beta2>? nodeGroupAffinity;
  /// Optional. The type of IPv6 access for a cluster.
  final pulumi.Input<GceClusterConfigPrivateIpv6GoogleAccessDataprocV1beta2>? privateIpv6GoogleAccess;
  /// Optional. Reservation Affinity for consuming Zonal reservation.
  final pulumi.Input<ReservationAffinityDataprocV1beta2>? reservationAffinity;
  /// Optional. The Dataproc service account (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc) (also see VM Data Plane identity (https://cloud.google.com/dataproc/docs/concepts/iam/dataproc-principals#vm_service_account_data_plane_identity)) used by Dataproc cluster VM instances to access Google Cloud Platform services.If not specified, the Compute Engine default service account (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final pulumi.Input<String>? serviceAccount;
  /// Optional. The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: https://www.googleapis.com/auth/cloud.useraccounts.readonly https://www.googleapis.com/auth/devstorage.read_write https://www.googleapis.com/auth/logging.writeIf no scopes are specified, the following defaults are also provided: https://www.googleapis.com/auth/bigquery https://www.googleapis.com/auth/bigtable.admin.table https://www.googleapis.com/auth/bigtable.data https://www.googleapis.com/auth/devstorage.full_control
  final pulumi.Input<List<String>>? serviceAccountScopes;
  /// Optional. Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
  final pulumi.Input<ShieldedInstanceConfigDataprocV1beta2>? shieldedInstanceConfig;
  /// Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0 projects/[project_id]/regions/us-east1/subnetworks/sub0 sub0
  final pulumi.Input<String>? subnetworkUri;
  /// The Compute Engine tags to add to all instances (see Tagging instances (https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final pulumi.Input<List<String>>? tags;
  /// Optional. The zone where the Compute Engine cluster will be located. On a create request, it is required in the "global" region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone] projects/[project_id]/zones/[zone] us-central1-f
  final pulumi.Input<String>? zoneUri;

  /// Creates a new [GceClusterConfigDataprocV1beta2].
  /// [internalIpOnly] Optional. If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This internal_ip_only restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.
  /// [metadata] The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  /// [networkUri] Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither network_uri nor subnetwork_uri is specified, the "default" network of the project is used, if it exists. Cannot be a "Custom Subnet Network" (see Using Subnetworks (https://cloud.google.com/compute/docs/subnetworks) for more information).A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/global/default projects/[project_id]/regions/global/default default
  /// [nodeGroupAffinity] Optional. Node Group Affinity for sole-tenant clusters.
  /// [privateIpv6GoogleAccess] Optional. The type of IPv6 access for a cluster.
  /// [reservationAffinity] Optional. Reservation Affinity for consuming Zonal reservation.
  /// [serviceAccount] Optional. The Dataproc service account (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc) (also see VM Data Plane identity (https://cloud.google.com/dataproc/docs/concepts/iam/dataproc-principals#vm_service_account_data_plane_identity)) used by Dataproc cluster VM instances to access Google Cloud Platform services.If not specified, the Compute Engine default service account (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  /// [serviceAccountScopes] Optional. The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: https://www.googleapis.com/auth/cloud.useraccounts.readonly https://www.googleapis.com/auth/devstorage.read_write https://www.googleapis.com/auth/logging.writeIf no scopes are specified, the following defaults are also provided: https://www.googleapis.com/auth/bigquery https://www.googleapis.com/auth/bigtable.admin.table https://www.googleapis.com/auth/bigtable.data https://www.googleapis.com/auth/devstorage.full_control
  /// [shieldedInstanceConfig] Optional. Shielded Instance Config for clusters using Compute Engine Shielded VMs (https://cloud.google.com/security/shielded-cloud/shielded-vm).
  /// [subnetworkUri] Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0 projects/[project_id]/regions/us-east1/subnetworks/sub0 sub0
  /// [tags] The Compute Engine tags to add to all instances (see Tagging instances (https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  /// [zoneUri] Optional. The zone where the Compute Engine cluster will be located. On a create request, it is required in the "global" region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone] projects/[project_id]/zones/[zone] us-central1-f
  const GceClusterConfigDataprocV1beta2({
    this.internalIpOnly,
    this.metadata,
    this.networkUri,
    this.nodeGroupAffinity,
    this.privateIpv6GoogleAccess,
    this.reservationAffinity,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.subnetworkUri,
    this.tags,
    this.zoneUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalIpOnly': ?internalIpOnly,
      'metadata': ?metadata,
      'networkUri': ?networkUri,
      'nodeGroupAffinity': ?pulumi.Input.mapOptionalInputValue<NodeGroupAffinityDataprocV1beta2, Map<String, dynamic>>(nodeGroupAffinity, (value) => value.toMap()),
      'privateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<GceClusterConfigPrivateIpv6GoogleAccessDataprocV1beta2, String>(privateIpv6GoogleAccess, (value) => value.wireValue),
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<ReservationAffinityDataprocV1beta2, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'serviceAccountScopes': ?serviceAccountScopes,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceConfigDataprocV1beta2, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'subnetworkUri': ?subnetworkUri,
      'tags': ?tags,
      'zoneUri': ?zoneUri,
    };
  }

  factory GceClusterConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return GceClusterConfigDataprocV1beta2(
      internalIpOnly: (() { final guardedValue = map['internalIpOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      networkUri: (() { final guardedValue = map['networkUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupAffinity: (() { final guardedValue = map['nodeGroupAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeGroupAffinityDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateIpv6GoogleAccess: (() { final guardedValue = map['privateIpv6GoogleAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GceClusterConfigPrivateIpv6GoogleAccessDataprocV1beta2.fromValue(guardedValue as String)); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationAffinityDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountScopes: (() { final guardedValue = map['serviceAccountScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShieldedInstanceConfigDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetworkUri: (() { final guardedValue = map['subnetworkUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zoneUri: (() { final guardedValue = map['zoneUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
