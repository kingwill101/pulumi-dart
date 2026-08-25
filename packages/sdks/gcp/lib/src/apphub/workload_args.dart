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
  final pulumi.Input<WorkloadAttributes?>? attributes;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-defined description of a Workload.
  final pulumi.Input<String?>? description;
  /// Immutable. The resource name of the original discovered workload.
  final pulumi.Input<String> discoveredWorkload;
  /// User-defined name for the Workload.
  final pulumi.Input<String?>? displayName;
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Workload identifier.
  final pulumi.Input<String> workloadId;

  /// Creates a new [WorkloadArgs].
  /// [applicationId] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [attributes] Consumer provided attributes.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-defined description of a Workload.
  /// [discoveredWorkload] Immutable. The resource name of the original discovered workload.
  /// [displayName] User-defined name for the Workload.
  /// [location] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [project] The ID of the project in which the resource belongs.
  /// [workloadId] The Workload identifier.
  const WorkloadArgs({
    required this.applicationId,
    this.attributes,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoveredWorkload: pulumi.Input.fromValue(map['discoveredWorkload'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadId: pulumi.Input.fromValue(map['workloadId'] as String),
    );
  }
}
