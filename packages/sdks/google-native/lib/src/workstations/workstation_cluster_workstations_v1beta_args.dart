// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_config.dart';
import 'private_cluster_config_workstations_v1beta.dart';

/// {@template pulumi_workstations_v1beta_workstation_cluster_workstations_v1beta_args_doc}
/// The set of arguments for WorkstationCluster.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1beta_workstation_cluster_workstations_v1beta_args_doc}
class WorkstationClusterWorkstationsV1betaArgs {
  /// Optional. Client-specified annotations.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Optional. Human-readable name for this workstation cluster.
  final pulumi.Input<String>? displayName;
  /// Optional. Configuration options for a custom domain.
  final pulumi.Input<DomainConfig>? domainConfig;
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
  final pulumi.Input<PrivateClusterConfigWorkstationsV1beta>? privateClusterConfig;
  final pulumi.Input<String>? project;
  /// Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  final pulumi.Input<String>? subnetwork;
  /// Required. ID to use for the workstation cluster.
  final pulumi.Input<String> workstationClusterId;

  /// Creates a new [WorkstationClusterWorkstationsV1betaArgs].
  /// [annotations] Optional. Client-specified annotations.
  /// [displayName] Optional. Human-readable name for this workstation cluster.
  /// [domainConfig] Optional. Configuration options for a custom domain.
  /// [etag] Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  /// [labels] Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation cluster and that are also propagated to the underlying Compute Engine resources.
  /// [location] Optional.
  /// [name] Identifier. Full name of this workstation cluster.
  /// [network] Immutable. Name of the Compute Engine network in which instances associated with this workstation cluster will be created.
  /// [privateClusterConfig] Optional. Configuration for private workstation cluster.
  /// [project] Optional.
  /// [subnetwork] Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstation cluster will be created. Must be part of the subnetwork specified for this workstation cluster.
  /// [workstationClusterId] Required. ID to use for the workstation cluster.
  WorkstationClusterWorkstationsV1betaArgs({
    this.annotations,
    this.displayName,
    this.domainConfig,
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
      'domainConfig': ?pulumi.Input.mapOptionalInputValue<DomainConfig, Map<String, dynamic>>(domainConfig, (value) => value.toMap()),
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'privateClusterConfig': ?pulumi.Input.mapOptionalInputValue<PrivateClusterConfigWorkstationsV1beta, Map<String, dynamic>>(privateClusterConfig, (value) => value.toMap()),
      'project': ?project,
      'subnetwork': ?subnetwork,
      'workstationClusterId': workstationClusterId,
    };
  }

  factory WorkstationClusterWorkstationsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterWorkstationsV1betaArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      domainConfig: map['domainConfig'] == null ? null : (DomainConfig.fromMap((map['domainConfig']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      privateClusterConfig: map['privateClusterConfig'] == null ? null : (PrivateClusterConfigWorkstationsV1beta.fromMap((map['privateClusterConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
      workstationClusterId: (map['workstationClusterId'] as String).input(),
    );
  }
}

