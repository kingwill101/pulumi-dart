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
    this.applicationId,
    this.attributes,
    this.createTime,
    this.description,
    this.discoveredWorkload,
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.state,
    this.uid,
    this.updateTime,
    this.workloadId,
    this.workloadProperties,
    this.workloadReferences,
  });

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
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoveredWorkload: (() { final guardedValue = map['discoveredWorkload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadId: (() { final guardedValue = map['workloadId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadProperties: (() { final guardedValue = map['workloadProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadWorkloadProperty>(guardedValue, (value) => WorkloadWorkloadProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workloadReferences: (() { final guardedValue = map['workloadReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadWorkloadReference>(guardedValue, (value) => WorkloadWorkloadReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

