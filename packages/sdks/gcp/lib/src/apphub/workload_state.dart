// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_attributes.dart';
import 'workload_workload_property.dart';
import 'workload_workload_reference.dart';

/// Input properties used for looking up and filtering Workload resources.
class WorkloadState {
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String>? applicationId;
  /// Consumer provided attributes.
  /// Structure is documented below.
  final pulumi.Input<WorkloadAttributes>? attributes;
  /// Output only. Create time.
  final pulumi.Input<String>? createTime;
  /// User-defined description of a Workload.
  final pulumi.Input<String>? description;
  /// Immutable. The resource name of the original discovered workload.
  final pulumi.Input<String>? discoveredWorkload;
  /// User-defined name for the Workload.
  final pulumi.Input<String>? displayName;
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the Workload. Format:"projects/{host-project-id}/locations/{location}/applications/{application-id}/workloads/{workload-id}"
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. Workload state. Possible values:  STATE_UNSPECIFIED CREATING ACTIVE DELETING DETACHED
  final pulumi.Input<String>? state;
  /// Output only. A universally unique identifier (UUID) for the `Workload` in the UUID4 format.
  final pulumi.Input<String>? uid;
  /// Output only. Update time.
  final pulumi.Input<String>? updateTime;
  /// The Workload identifier.
  final pulumi.Input<String>? workloadId;
  /// Properties of an underlying compute resource represented by the Workload.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadWorkloadProperty>>? workloadProperties;
  /// Reference of an underlying compute resource represented by the Workload.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadWorkloadReference>>? workloadReferences;

  /// Creates a new [WorkloadState].
  /// [applicationId] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [attributes] Consumer provided attributes.
  /// [createTime] Output only. Create time.
  /// [description] User-defined description of a Workload.
  /// [discoveredWorkload] Immutable. The resource name of the original discovered workload.
  /// [displayName] User-defined name for the Workload.
  /// [location] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [name] Identifier. The resource name of the Workload. Format:"projects/{host-project-id}/locations/{location}/applications/{application-id}/workloads/{workload-id}"
  /// [project] The ID of the project in which the resource belongs.
  /// [state] Output only. Workload state. Possible values:  STATE_UNSPECIFIED CREATING ACTIVE DELETING DETACHED
  /// [uid] Output only. A universally unique identifier (UUID) for the `Workload` in the UUID4 format.
  /// [updateTime] Output only. Update time.
  /// [workloadId] The Workload identifier.
  /// [workloadProperties] Properties of an underlying compute resource represented by the Workload.
  /// [workloadReferences] Reference of an underlying compute resource represented by the Workload.
  WorkloadState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<WorkloadAttributes>? attributes,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? discoveredWorkload,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? workloadId,
    pulumi.Output<List<WorkloadWorkloadProperty>>? workloadProperties,
    pulumi.Output<List<WorkloadWorkloadReference>>? workloadReferences,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      attributes = pulumi.Input.asOptionalInput<WorkloadAttributes>(attributes),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      discoveredWorkload = pulumi.Input.asOptionalInput<String>(discoveredWorkload),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      workloadId = pulumi.Input.asOptionalInput<String>(workloadId),
      workloadProperties = pulumi.Input.asOptionalInput<List<WorkloadWorkloadProperty>>(workloadProperties),
      workloadReferences = pulumi.Input.asOptionalInput<List<WorkloadWorkloadReference>>(workloadReferences);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'attributes': ?pulumi.Input.mapOptionalInputValue<WorkloadAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'discoveredWorkload': ?discoveredWorkload,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'workloadId': ?workloadId,
      'workloadProperties': ?pulumi.Input.mapOptionalInputValue<List<WorkloadWorkloadProperty>, List<Map<String, dynamic>>>(workloadProperties, (value) => pulumi.Input.encodeList<WorkloadWorkloadProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workloadReferences': ?pulumi.Input.mapOptionalInputValue<List<WorkloadWorkloadReference>, List<Map<String, dynamic>>>(workloadReferences, (value) => pulumi.Input.encodeList<WorkloadWorkloadReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadState.fromMap(Map<String, dynamic> map) {
    return WorkloadState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      attributes: map['attributes'] == null ? null : pulumi.Output.create<WorkloadAttributes>(WorkloadAttributes.fromMap((map['attributes'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      discoveredWorkload: map['discoveredWorkload'] == null ? null : pulumi.Output.create<String>(map['discoveredWorkload'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      workloadId: map['workloadId'] == null ? null : pulumi.Output.create<String>(map['workloadId'] as String),
      workloadProperties: map['workloadProperties'] == null ? null : pulumi.Output.create<List<WorkloadWorkloadProperty>>(pulumi.Input.decodeList<WorkloadWorkloadProperty>(map['workloadProperties'], (value) => WorkloadWorkloadProperty.fromMap((value as Map).cast<String, dynamic>()))),
      workloadReferences: map['workloadReferences'] == null ? null : pulumi.Output.create<List<WorkloadWorkloadReference>>(pulumi.Input.decodeList<WorkloadWorkloadReference>(map['workloadReferences'], (value) => WorkloadWorkloadReference.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

