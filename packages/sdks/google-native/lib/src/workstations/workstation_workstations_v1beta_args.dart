// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_v1beta_workstation_workstations_v1beta_args_doc}
/// The set of arguments for Workstation.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1beta_workstation_workstations_v1beta_args_doc}
class WorkstationWorkstationsV1betaArgs {
  /// Optional. Client-specified annotations.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Optional. Human-readable name for this workstation.
  final pulumi.Input<String>? displayName;
  /// Optional. Environment variables passed to the workstation container's entrypoint.
  final pulumi.Input<Map<String, String>>? env;
  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation and that are also propagated to the underlying Compute Engine resources.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Identifier. Full name of this workstation.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workstationClusterId;
  final pulumi.Input<String> workstationConfigId;
  /// Required. ID to use for the workstation.
  final pulumi.Input<String> workstationId;

  /// Creates a new [WorkstationWorkstationsV1betaArgs].
  /// [annotations] Optional. Client-specified annotations.
  /// [displayName] Optional. Human-readable name for this workstation.
  /// [env] Optional. Environment variables passed to the workstation container's entrypoint.
  /// [etag] Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  /// [labels] Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation and that are also propagated to the underlying Compute Engine resources.
  /// [location] Optional.
  /// [name] Identifier. Full name of this workstation.
  /// [project] Optional.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required.
  /// [workstationId] Required. ID to use for the workstation.
  WorkstationWorkstationsV1betaArgs({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? env,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> workstationClusterId,
    required pulumi.Output<String> workstationConfigId,
    required pulumi.Output<String> workstationId,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      env = pulumi.Input.asOptionalInput<Map<String, String>>(env),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      workstationClusterId = pulumi.Input.asInput<String>(workstationClusterId),
      workstationConfigId = pulumi.Input.asInput<String>(workstationConfigId),
      workstationId = pulumi.Input.asInput<String>(workstationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'displayName': ?displayName,
      'env': ?env,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
      'workstationId': workstationId,
    };
  }

  factory WorkstationWorkstationsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationWorkstationsV1betaArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      env: map['env'] == null ? null : pulumi.Output.create<Map<String, String>>((map['env'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workstationClusterId: pulumi.Output.create<String>(map['workstationClusterId'] as String),
      workstationConfigId: pulumi.Output.create<String>(map['workstationConfigId'] as String),
      workstationId: pulumi.Output.create<String>(map['workstationId'] as String),
    );
  }
}

