// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_cluster_condition.dart';
import 'workstation_cluster_domain_config.dart';
import 'workstation_cluster_private_cluster_config.dart';

/// Input properties used for looking up and filtering WorkstationCluster resources.
class WorkstationClusterState {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Status conditions describing the current resource state.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationClusterCondition>>? conditions;
  /// The private IP address of the control plane for this workstation cluster.
  /// Workstation VMs need access to this IP address to work with the service, so make sure that your firewall rules allow egress from the workstation VMs to this address.
  final pulumi.Input<String>? controlPlaneIp;
  /// Time when this resource was created.
  final pulumi.Input<String>? createTime;
  /// Whether this resource is in degraded mode, in which case it may require user action to restore full functionality.
  /// Details can be found in the conditions field.
  final pulumi.Input<bool>? degraded;
  /// Human-readable name for this resource.
  final pulumi.Input<String>? displayName;
  /// Configuration options for a custom domain.
  /// Structure is documented below.
  final pulumi.Input<WorkstationClusterDomainConfig>? domainConfig;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Checksum computed by the server.
  /// May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the workstation cluster should reside.
  final pulumi.Input<String>? location;
  /// The name of the cluster resource.
  final pulumi.Input<String>? name;
  /// The relative resource name of the VPC network on which the instance can be accessed.
  /// It is specified in the following form: "projects/{projectNumber}/global/networks/{network_id}".
  final pulumi.Input<String>? network;
  /// Configuration for private cluster.
  /// Structure is documented below.
  final pulumi.Input<WorkstationClusterPrivateClusterConfig>? privateClusterConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// Must be part of the subnetwork specified for this cluster.
  final pulumi.Input<String>? subnetwork;
  /// Resource manager tags bound to this resource.
  /// For example:
  /// "123/environment": "production",
  /// "123/costCenter": "marketing"
  final pulumi.Input<Map<String, String>>? tags;
  /// The system-generated UID of the resource.
  final pulumi.Input<String>? uid;
  /// ID to use for the workstation cluster.
  final pulumi.Input<String>? workstationClusterId;

  /// Creates a new [WorkstationClusterState].
  /// [annotations] Client-specified annotations. This is distinct from labels.
  /// [conditions] Status conditions describing the current resource state.
  /// [controlPlaneIp] The private IP address of the control plane for this workstation cluster.
  /// [createTime] Time when this resource was created.
  /// [degraded] Whether this resource is in degraded mode, in which case it may require user action to restore full functionality.
  /// [displayName] Human-readable name for this resource.
  /// [domainConfig] Configuration options for a custom domain.
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Checksum computed by the server.
  /// [labels] Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// [location] The location where the workstation cluster should reside.
  /// [name] The name of the cluster resource.
  /// [network] The relative resource name of the VPC network on which the instance can be accessed.
  /// [privateClusterConfig] Configuration for private cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [subnetwork] Name of the Compute Engine subnetwork in which instances associated with this cluster will be created.
  /// [tags] Resource manager tags bound to this resource.
  /// [uid] The system-generated UID of the resource.
  /// [workstationClusterId] ID to use for the workstation cluster.
  WorkstationClusterState({
    this.annotations,
    this.conditions,
    this.controlPlaneIp,
    this.createTime,
    this.degraded,
    this.displayName,
    this.domainConfig,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.privateClusterConfig,
    this.project,
    this.pulumiLabels,
    this.subnetwork,
    this.tags,
    this.uid,
    this.workstationClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<WorkstationClusterCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<WorkstationClusterCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controlPlaneIp': ?controlPlaneIp,
      'createTime': ?createTime,
      'degraded': ?degraded,
      'displayName': ?displayName,
      'domainConfig': ?pulumi.Input.mapOptionalInputValue<WorkstationClusterDomainConfig, Map<String, dynamic>>(domainConfig, (value) => value.toMap()),
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'privateClusterConfig': ?pulumi.Input.mapOptionalInputValue<WorkstationClusterPrivateClusterConfig, Map<String, dynamic>>(privateClusterConfig, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'subnetwork': ?subnetwork,
      'tags': ?tags,
      'uid': ?uid,
      'workstationClusterId': ?workstationClusterId,
    };
  }

  factory WorkstationClusterState.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterState(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<WorkstationClusterCondition>(map['conditions']!, (value) => WorkstationClusterCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      controlPlaneIp: map['controlPlaneIp'] == null ? null : (map['controlPlaneIp']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      degraded: map['degraded'] == null ? null : (map['degraded']! as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      domainConfig: map['domainConfig'] == null ? null : (WorkstationClusterDomainConfig.fromMap((map['domainConfig']! as Map).cast<String, dynamic>())).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      privateClusterConfig: map['privateClusterConfig'] == null ? null : (WorkstationClusterPrivateClusterConfig.fromMap((map['privateClusterConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      workstationClusterId: map['workstationClusterId'] == null ? null : (map['workstationClusterId']! as String).input(),
    );
  }
}

