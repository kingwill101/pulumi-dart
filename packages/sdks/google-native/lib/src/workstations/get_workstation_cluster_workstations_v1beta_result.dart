// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_config_response.dart';
import 'private_cluster_config_response_workstations_v1beta.dart';
import 'status_response_workstations_v1beta.dart';

/// Result data returned by getWorkstationCluster.
class GetWorkstationClusterWorkstationsV1betaResult {
  /// Optional. Client-specified annotations.
  final Map<String, String>? annotations;
  /// Status conditions describing the workstation cluster's current state.
  final List<StatusResponseWorkstationsV1beta>? conditions;
  /// The private IP address of the control plane for this workstation cluster. Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  final String? controlPlaneIp;
  /// Time when this workstation cluster was created.
  final String? createTime;
  /// Whether this workstation cluster is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in conditions.
  final bool? degraded;
  /// Time when this workstation cluster was soft-deleted.
  final String? deleteTime;
  /// Optional. Human-readable name for this workstation cluster.
  final String? displayName;
  /// Optional. Configuration options for a custom domain.
  final DomainConfigResponse? domainConfig;
  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final String? etag;
  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  final Map<String, String>? labels;
  /// Identifier. Full name of this workstation cluster.
  final String? name;
  /// Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  final String? network;
  /// Optional. Configuration for private workstation cluster.
  final PrivateClusterConfigResponseWorkstationsV1beta? privateClusterConfig;
  /// Indicates whether this workstation cluster is currently being updated to match its intended state.
  final bool? reconciling;
  /// Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  final String? subnetwork;
  /// A system-assigned unique identifier for this workstation cluster.
  final String? uid;
  /// Time when this workstation cluster was most recently updated.
  final String? updateTime;

  /// Creates a new [GetWorkstationClusterWorkstationsV1betaResult].
  /// [annotations] Optional. Client-specified annotations.
  /// [conditions] Status conditions describing the workstation cluster's current state.
  /// [controlPlaneIp] The private IP address of the control plane for this workstation cluster. Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  /// [createTime] Time when this workstation cluster was created.
  /// [degraded] Whether this workstation cluster is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in conditions.
  /// [deleteTime] Time when this workstation cluster was soft-deleted.
  /// [displayName] Optional. Human-readable name for this workstation cluster.
  /// [domainConfig] Optional. Configuration options for a custom domain.
  /// [etag] Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  /// [labels] Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  /// [name] Identifier. Full name of this workstation cluster.
  /// [network] Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  /// [privateClusterConfig] Optional. Configuration for private workstation cluster.
  /// [reconciling] Indicates whether this workstation cluster is currently being updated to match its intended state.
  /// [subnetwork] Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  /// [uid] A system-assigned unique identifier for this workstation cluster.
  /// [updateTime] Time when this workstation cluster was most recently updated.
  const GetWorkstationClusterWorkstationsV1betaResult({
    this.annotations,
    this.conditions,
    this.controlPlaneIp,
    this.createTime,
    this.degraded,
    this.deleteTime,
    this.displayName,
    this.domainConfig,
    this.etag,
    this.labels,
    this.name,
    this.network,
    this.privateClusterConfig,
    this.reconciling,
    this.subnetwork,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'conditions': ?(() { final guardedValue = conditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<StatusResponseWorkstationsV1beta, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'controlPlaneIp': ?controlPlaneIp,
      'createTime': ?createTime,
      'degraded': ?degraded,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'domainConfig': ?domainConfig?.toMap(),
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'privateClusterConfig': ?privateClusterConfig?.toMap(),
      'reconciling': ?reconciling,
      'subnetwork': ?subnetwork,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetWorkstationClusterWorkstationsV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetWorkstationClusterWorkstationsV1betaResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StatusResponseWorkstationsV1beta>(guardedValue, (value) => StatusResponseWorkstationsV1beta.fromMap((value as Map).cast<String, dynamic>())); })(),
      controlPlaneIp: (() { final guardedValue = map['controlPlaneIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      degraded: (() { final guardedValue = map['degraded']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainConfig: (() { final guardedValue = map['domainConfig']; if (guardedValue == null) return null; return DomainConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateClusterConfig: (() { final guardedValue = map['privateClusterConfig']; if (guardedValue == null) return null; return PrivateClusterConfigResponseWorkstationsV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
