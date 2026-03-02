// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_cluster_authorization.dart';
import 'aws_cluster_binary_authorization.dart';
import 'aws_cluster_control_plane.dart';
import 'aws_cluster_fleet.dart';
import 'aws_cluster_logging_config.dart';
import 'aws_cluster_networking.dart';
import 'aws_cluster_workload_identity_config.dart';

/// Input properties used for looking up and filtering AwsCluster resources.
class AwsClusterState {
  /// Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Configuration related to the cluster RBAC settings.
  final pulumi.Input<AwsClusterAuthorization>? authorization;
  /// The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region.
  final pulumi.Input<String>? awsRegion;
  /// Configuration options for the Binary Authorization feature.
  final pulumi.Input<AwsClusterBinaryAuthorization>? binaryAuthorization;
  /// Configuration related to the cluster control plane.
  final pulumi.Input<AwsClusterControlPlane>? controlPlane;
  /// Output only. The time at which this cluster was created.
  final pulumi.Input<String>? createTime;
  /// Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  final pulumi.Input<String>? description;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// Output only. The endpoint of the cluster's API server.
  final pulumi.Input<String>? endpoint;
  /// Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Fleet configuration.
  final pulumi.Input<AwsClusterFleet>? fleet;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Logging configuration.
  final pulumi.Input<AwsClusterLoggingConfig>? loggingConfig;
  /// The name of this resource.
  final pulumi.Input<String>? name;
  /// Cluster-wide networking configuration.
  final pulumi.Input<AwsClusterNetworking>? networking;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Output only. If set, there are currently changes in flight to the cluster.
  final pulumi.Input<bool>? reconciling;
  /// Output only. The current state of the cluster. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  final pulumi.Input<String>? state;
  /// Output only. A globally unique identifier for the cluster.
  final pulumi.Input<String>? uid;
  /// Output only. The time at which this cluster was last updated.
  final pulumi.Input<String>? updateTime;
  /// Output only. Workload Identity settings.
  final pulumi.Input<List<AwsClusterWorkloadIdentityConfig>>? workloadIdentityConfigs;

  /// Creates a new [AwsClusterState].
  /// [annotations] Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [authorization] Configuration related to the cluster RBAC settings.
  /// [awsRegion] The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region.
  /// [binaryAuthorization] Configuration options for the Binary Authorization feature.
  /// [controlPlane] Configuration related to the cluster control plane.
  /// [createTime] Output only. The time at which this cluster was created.
  /// [description] Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  /// [effectiveAnnotations] Optional.
  /// [endpoint] Output only. The endpoint of the cluster's API server.
  /// [etag] Allows clients to perform consistent read-modify-writes through optimistic concurrency control. May be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [fleet] Fleet configuration.
  /// [location] The location for the resource
  /// [loggingConfig] Logging configuration.
  /// [name] The name of this resource.
  /// [networking] Cluster-wide networking configuration.
  /// [project] The project for the resource
  /// [reconciling] Output only. If set, there are currently changes in flight to the cluster.
  /// [state] Output only. The current state of the cluster. Possible values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING, STOPPING, ERROR, DEGRADED
  /// [uid] Output only. A globally unique identifier for the cluster.
  /// [updateTime] Output only. The time at which this cluster was last updated.
  /// [workloadIdentityConfigs] Output only. Workload Identity settings.
  AwsClusterState({
    this.annotations,
    this.authorization,
    this.awsRegion,
    this.binaryAuthorization,
    this.controlPlane,
    this.createTime,
    this.description,
    this.effectiveAnnotations,
    this.endpoint,
    this.etag,
    this.fleet,
    this.location,
    this.loggingConfig,
    this.name,
    this.networking,
    this.project,
    this.reconciling,
    this.state,
    this.uid,
    this.updateTime,
    this.workloadIdentityConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authorization': ?pulumi.Input.mapOptionalInputValue<AwsClusterAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'awsRegion': ?awsRegion,
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<AwsClusterBinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<AwsClusterControlPlane, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveAnnotations': ?effectiveAnnotations,
      'endpoint': ?endpoint,
      'etag': ?etag,
      'fleet': ?pulumi.Input.mapOptionalInputValue<AwsClusterFleet, Map<String, dynamic>>(fleet, (value) => value.toMap()),
      'location': ?location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<AwsClusterLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'name': ?name,
      'networking': ?pulumi.Input.mapOptionalInputValue<AwsClusterNetworking, Map<String, dynamic>>(networking, (value) => value.toMap()),
      'project': ?project,
      'reconciling': ?reconciling,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'workloadIdentityConfigs': ?pulumi.Input.mapOptionalInputValue<List<AwsClusterWorkloadIdentityConfig>, List<Map<String, dynamic>>>(workloadIdentityConfigs, (value) => pulumi.Input.encodeList<AwsClusterWorkloadIdentityConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsClusterState.fromMap(Map<String, dynamic> map) {
    return AwsClusterState(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      authorization: map['authorization'] == null ? null : (AwsClusterAuthorization.fromMap((map['authorization'] as Map).cast<String, dynamic>())).input(),
      awsRegion: map['awsRegion'] == null ? null : (map['awsRegion'] as String).input(),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : (AwsClusterBinaryAuthorization.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>())).input(),
      controlPlane: map['controlPlane'] == null ? null : (AwsClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations'] as Map).cast<String, String>()).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      fleet: map['fleet'] == null ? null : (AwsClusterFleet.fromMap((map['fleet'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (AwsClusterLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networking: map['networking'] == null ? null : (AwsClusterNetworking.fromMap((map['networking'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling'] as bool).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      workloadIdentityConfigs: map['workloadIdentityConfigs'] == null ? null : (pulumi.Input.decodeList<AwsClusterWorkloadIdentityConfig>(map['workloadIdentityConfigs'], (value) => AwsClusterWorkloadIdentityConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

