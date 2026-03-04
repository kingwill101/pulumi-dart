// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_workstation_workstation_args_doc}
/// The set of arguments for Workstation.
/// {@endtemplate}
/// {@macro pulumi_workstations_workstation_workstation_args_doc}
class WorkstationArgs {
  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Human-readable name for this resource.
  final pulumi.Input<String>? displayName;

  /// 'Client-specified environment variables passed to the workstation container's entrypoint.'
  final pulumi.Input<Map<String, String>>? env;

  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the workstation parent resources reside.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Full resource name of the source workstation from which the workstation's persistent
  /// directories will be cloned from during creation.
  final pulumi.Input<String>? sourceWorkstation;

  /// The ID of the parent workstation cluster.
  final pulumi.Input<String> workstationClusterId;

  /// The ID of the parent workstation cluster config.
  final pulumi.Input<String> workstationConfigId;

  /// ID to use for the workstation.
  final pulumi.Input<String> workstationId;

  /// Creates a new [WorkstationArgs].
  /// [annotations] Client-specified annotations. This is distinct from labels.
  /// [displayName] Human-readable name for this resource.
  /// [env] 'Client-specified environment variables passed to the workstation container's entrypoint.'
  /// [labels] Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// [location] The location where the workstation parent resources reside.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceWorkstation] Full resource name of the source workstation from which the workstation's persistent
  /// [workstationClusterId] The ID of the parent workstation cluster.
  /// [workstationConfigId] The ID of the parent workstation cluster config.
  /// [workstationId] ID to use for the workstation.
  WorkstationArgs({
    this.annotations,
    this.displayName,
    this.env,
    this.labels,
    required this.location,
    this.project,
    this.sourceWorkstation,
    required this.workstationClusterId,
    required this.workstationConfigId,
    required this.workstationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'displayName': ?displayName,
      'env': ?env,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'sourceWorkstation': ?sourceWorkstation,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
      'workstationId': workstationId,
    };
  }

  factory WorkstationArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationArgs(
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
      env: (() {
        final guardedValue = map['env'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceWorkstation: (() {
        final guardedValue = map['sourceWorkstation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workstationClusterId: pulumi.Input.fromValue(
        map['workstationClusterId'] as String,
      ),
      workstationConfigId: pulumi.Input.fromValue(
        map['workstationConfigId'] as String,
      ),
      workstationId: pulumi.Input.fromValue(map['workstationId'] as String),
    );
  }
}
