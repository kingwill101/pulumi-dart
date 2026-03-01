// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cluster_config.dart';

/// {@template pulumi_workstations_v1_workstation_cluster_args_doc}
/// The set of arguments for WorkstationCluster.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1_workstation_cluster_args_doc}
class WorkstationClusterArgs {
  /// Optional. Client-specified annotations.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Optional. Human-readable name for this workstation cluster.
  final pulumi.Input<String>? displayName;
  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Identifier. Full name of this workstation cluster.
  final pulumi.Input<String>? name;
  /// Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  final pulumi.Input<String>? network;
  /// Optional. Configuration for private workstation cluster.
  final pulumi.Input<PrivateClusterConfig>? privateClusterConfig;
  final pulumi.Input<String>? project;
  /// Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  final pulumi.Input<String>? subnetwork;
  /// Required. ID to use for the workstation cluster.
  final pulumi.Input<String> workstationClusterId;

  /// Creates a new [WorkstationClusterArgs].
  /// [annotations] Optional. Client-specified annotations.
  /// [displayName] Optional. Human-readable name for this workstation cluster.
  /// [etag] Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  /// [labels] Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  /// [location] Optional.
  /// [name] Identifier. Full name of this workstation cluster.
  /// [network] Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  /// [privateClusterConfig] Optional. Configuration for private workstation cluster.
  /// [project] Optional.
  /// [subnetwork] Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  /// [workstationClusterId] Required. ID to use for the workstation cluster.
  WorkstationClusterArgs({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<PrivateClusterConfig>? privateClusterConfig,
    pulumi.Output<String>? project,
    pulumi.Output<String>? subnetwork,
    required pulumi.Output<String> workstationClusterId,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      privateClusterConfig = pulumi.Input.asOptionalInput<PrivateClusterConfig>(privateClusterConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork),
      workstationClusterId = pulumi.Input.asInput<String>(workstationClusterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'privateClusterConfig': ?pulumi.Input.mapOptionalInputValue<PrivateClusterConfig, Map<String, dynamic>>(privateClusterConfig, (value) => value.toMap()),
      'project': ?project,
      'subnetwork': ?subnetwork,
      'workstationClusterId': workstationClusterId,
    };
  }

  factory WorkstationClusterArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      privateClusterConfig: map['privateClusterConfig'] == null ? null : pulumi.Output.create<PrivateClusterConfig>(PrivateClusterConfig.fromMap((map['privateClusterConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      subnetwork: map['subnetwork'] == null ? null : pulumi.Output.create<String>(map['subnetwork'] as String),
      workstationClusterId: pulumi.Output.create<String>(map['workstationClusterId'] as String),
    );
  }
}

