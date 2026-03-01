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
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<AwsClusterAuthorization>? authorization,
    pulumi.Output<String>? awsRegion,
    pulumi.Output<AwsClusterBinaryAuthorization>? binaryAuthorization,
    pulumi.Output<AwsClusterControlPlane>? controlPlane,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveAnnotations,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? etag,
    pulumi.Output<AwsClusterFleet>? fleet,
    pulumi.Output<String>? location,
    pulumi.Output<AwsClusterLoggingConfig>? loggingConfig,
    pulumi.Output<String>? name,
    pulumi.Output<AwsClusterNetworking>? networking,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<List<AwsClusterWorkloadIdentityConfig>>? workloadIdentityConfigs,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      authorization = pulumi.Input.asOptionalInput<AwsClusterAuthorization>(authorization),
      awsRegion = pulumi.Input.asOptionalInput<String>(awsRegion),
      binaryAuthorization = pulumi.Input.asOptionalInput<AwsClusterBinaryAuthorization>(binaryAuthorization),
      controlPlane = pulumi.Input.asOptionalInput<AwsClusterControlPlane>(controlPlane),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveAnnotations = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveAnnotations),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      fleet = pulumi.Input.asOptionalInput<AwsClusterFleet>(fleet),
      location = pulumi.Input.asOptionalInput<String>(location),
      loggingConfig = pulumi.Input.asOptionalInput<AwsClusterLoggingConfig>(loggingConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      networking = pulumi.Input.asOptionalInput<AwsClusterNetworking>(networking),
      project = pulumi.Input.asOptionalInput<String>(project),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      workloadIdentityConfigs = pulumi.Input.asOptionalInput<List<AwsClusterWorkloadIdentityConfig>>(workloadIdentityConfigs);

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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      authorization: map['authorization'] == null ? null : pulumi.Output.create<AwsClusterAuthorization>(AwsClusterAuthorization.fromMap((map['authorization'] as Map).cast<String, dynamic>())),
      awsRegion: map['awsRegion'] == null ? null : pulumi.Output.create<String>(map['awsRegion'] as String),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : pulumi.Output.create<AwsClusterBinaryAuthorization>(AwsClusterBinaryAuthorization.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>())),
      controlPlane: map['controlPlane'] == null ? null : pulumi.Output.create<AwsClusterControlPlane>(AwsClusterControlPlane.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveAnnotations'] as Map).cast<String, String>()),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      fleet: map['fleet'] == null ? null : pulumi.Output.create<AwsClusterFleet>(AwsClusterFleet.fromMap((map['fleet'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      loggingConfig: map['loggingConfig'] == null ? null : pulumi.Output.create<AwsClusterLoggingConfig>(AwsClusterLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networking: map['networking'] == null ? null : pulumi.Output.create<AwsClusterNetworking>(AwsClusterNetworking.fromMap((map['networking'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      workloadIdentityConfigs: map['workloadIdentityConfigs'] == null ? null : pulumi.Output.create<List<AwsClusterWorkloadIdentityConfig>>(pulumi.Input.decodeList<AwsClusterWorkloadIdentityConfig>(map['workloadIdentityConfigs'], (value) => AwsClusterWorkloadIdentityConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

