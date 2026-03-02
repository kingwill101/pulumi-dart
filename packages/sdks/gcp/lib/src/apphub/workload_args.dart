// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_attributes.dart';

/// {@template pulumi_apphub_workload_workload_args_doc}
/// The set of arguments for Workload.
/// {@endtemplate}
/// {@macro pulumi_apphub_workload_workload_args_doc}
class WorkloadArgs {
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String> applicationId;
  /// Consumer provided attributes.
  /// Structure is documented below.
  final pulumi.Input<WorkloadAttributes>? attributes;
  /// User-defined description of a Workload.
  final pulumi.Input<String>? description;
  /// Immutable. The resource name of the original discovered workload.
  final pulumi.Input<String> discoveredWorkload;
  /// User-defined name for the Workload.
  final pulumi.Input<String>? displayName;
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Workload identifier.
  final pulumi.Input<String> workloadId;

  /// Creates a new [WorkloadArgs].
  /// [applicationId] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [attributes] Consumer provided attributes.
  /// [description] User-defined description of a Workload.
  /// [discoveredWorkload] Immutable. The resource name of the original discovered workload.
  /// [displayName] User-defined name for the Workload.
  /// [location] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [project] The ID of the project in which the resource belongs.
  /// [workloadId] The Workload identifier.
  WorkloadArgs({
    required this.applicationId,
    this.attributes,
    this.description,
    required this.discoveredWorkload,
    this.displayName,
    required this.location,
    this.project,
    required this.workloadId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'attributes': ?pulumi.Input.mapOptionalInputValue<WorkloadAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'description': ?description,
      'discoveredWorkload': discoveredWorkload,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'workloadId': workloadId,
    };
  }

  factory WorkloadArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadArgs(
      applicationId: (map['applicationId'] as String).input(),
      attributes: map['attributes'] == null ? null : (WorkloadAttributes.fromMap((map['attributes']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      discoveredWorkload: (map['discoveredWorkload'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      workloadId: (map['workloadId'] as String).input(),
    );
  }
}

