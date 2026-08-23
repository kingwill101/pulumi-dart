// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cluster_config_response.dart';
import 'status_response.dart';

/// Result data returned by getWorkstationCluster.
class GetWorkstationClusterResult {
  /// Optional. Client-specified annotations.
  final Map<String, String> annotations;
  /// Status conditions describing the workstation cluster's current state.
  final List<StatusResponse> conditions;
  /// The private IP address of the control plane for this workstation cluster. Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  final String controlPlaneIp;
  /// Time when this workstation cluster was created.
  final String createTime;
  /// Whether this workstation cluster is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in conditions.
  final bool degraded;
  /// Time when this workstation cluster was soft-deleted.
  final String deleteTime;
  /// Optional. Human-readable name for this workstation cluster.
  final String displayName;
  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final String etag;
  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  final Map<String, String> labels;
  /// Identifier. Full name of this workstation cluster.
  final String name;
  /// Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  final String network;
  /// Optional. Configuration for private workstation cluster.
  final PrivateClusterConfigResponse privateClusterConfig;
  /// Indicates whether this workstation cluster is currently being updated to match its intended state.
  final bool reconciling;
  /// Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  final String subnetwork;
  /// A system-assigned unique identifier for this workstation cluster.
  final String uid;
  /// Time when this workstation cluster was most recently updated.
  final String updateTime;

  /// Creates a new [GetWorkstationClusterResult].
  /// [annotations] Optional. Client-specified annotations.
  /// [conditions] Status conditions describing the workstation cluster's current state.
  /// [controlPlaneIp] The private IP address of the control plane for this workstation cluster. Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  /// [createTime] Time when this workstation cluster was created.
  /// [degraded] Whether this workstation cluster is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in conditions.
  /// [deleteTime] Time when this workstation cluster was soft-deleted.
  /// [displayName] Optional. Human-readable name for this workstation cluster.
  /// [etag] Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  /// [labels] Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  /// [name] Identifier. Full name of this workstation cluster.
  /// [network] Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  /// [privateClusterConfig] Optional. Configuration for private workstation cluster.
  /// [reconciling] Indicates whether this workstation cluster is currently being updated to match its intended state.
  /// [subnetwork] Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  /// [uid] A system-assigned unique identifier for this workstation cluster.
  /// [updateTime] Time when this workstation cluster was most recently updated.
  const GetWorkstationClusterResult({
    required this.annotations,
    required this.conditions,
    required this.controlPlaneIp,
    required this.createTime,
    required this.degraded,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.labels,
    required this.name,
    required this.network,
    required this.privateClusterConfig,
    required this.reconciling,
    required this.subnetwork,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'conditions': pulumi.Input.encodeList<StatusResponse, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'controlPlaneIp': controlPlaneIp,
      'createTime': createTime,
      'degraded': degraded,
      'deleteTime': deleteTime,
      'displayName': displayName,
      'etag': etag,
      'labels': labels,
      'name': name,
      'network': network,
      'privateClusterConfig': privateClusterConfig.toMap(),
      'reconciling': reconciling,
      'subnetwork': subnetwork,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetWorkstationClusterResult.fromMap(Map<String, dynamic> map) {
    return GetWorkstationClusterResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      conditions: pulumi.Input.decodeList<StatusResponse>(map['conditions']!, (value) => StatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      controlPlaneIp: map['controlPlaneIp'] as String,
      createTime: map['createTime'] as String,
      degraded: map['degraded'] as bool,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      privateClusterConfig: PrivateClusterConfigResponse.fromMap((map['privateClusterConfig']! as Map).cast<String, dynamic>()),
      reconciling: map['reconciling'] as bool,
      subnetwork: map['subnetwork'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
