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
    this.annotations,
    this.displayName,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.privateClusterConfig,
    this.project,
    this.subnetwork,
    required this.workstationClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'privateClusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateClusterConfig,
            Map<String, dynamic>
          >(privateClusterConfig, (value) => value.toMap()),
      'project': ?project,
      'subnetwork': ?subnetwork,
      'workstationClusterId': workstationClusterId,
    };
  }

  factory WorkstationClusterArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterArgs(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateClusterConfig: (() {
        final guardedValue = map['privateClusterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateClusterConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetwork: (() {
        final guardedValue = map['subnetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workstationClusterId: pulumi.Input.fromValue(
        map['workstationClusterId'] as String,
      ),
    );
  }
}
