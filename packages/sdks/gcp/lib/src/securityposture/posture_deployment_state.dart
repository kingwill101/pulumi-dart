// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PostureDeployment resources.
class PostureDeploymentState {
  /// Time the posture deployment was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Description of the posture deployment.
  final pulumi.Input<String>? description;
  /// This is an output only optional field which will be filled in case when
  /// PostureDeployment state is UPDATE_FAILED or CREATE_FAILED or DELETE_FAILED.
  /// It denotes the desired posture to be deployed.
  final pulumi.Input<String>? desiredPostureId;
  /// This is an output only optional field which will be filled in case when
  /// PostureDeployment state is UPDATE_FAILED or CREATE_FAILED or DELETE_FAILED.
  /// It denotes the desired posture revision_id to be deployed.
  final pulumi.Input<String>? desiredPostureRevisionId;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// This is a output only optional field which will be filled in case where
  /// PostureDeployment enters a failure state like UPDATE_FAILED or
  /// CREATE_FAILED or DELETE_FAILED. It will have the failure message for posture deployment's
  /// CREATE/UPDATE/DELETE methods.
  final pulumi.Input<String>? failureMessage;
  /// The location of the resource, eg. global`.
  final pulumi.Input<String>? location;
  /// Name of the posture deployment instance.
  final pulumi.Input<String>? name;
  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  final pulumi.Input<String>? parent;
  /// ID of the posture deployment.
  final pulumi.Input<String>? postureDeploymentId;
  /// Relative name of the posture which needs to be deployed. It should be in the format:
  /// organizations/{organization_id}/locations/{location}/postures/{posture_id}
  final pulumi.Input<String>? postureId;
  /// Revision_id the posture which needs to be deployed.
  final pulumi.Input<String>? postureRevisionId;
  /// If set, there are currently changes in flight to the posture deployment.
  final pulumi.Input<bool>? reconciling;
  /// State of the posture deployment. A posture deployment can be in the following terminal states:
  /// ACTIVE, CREATE_FAILED, UPDATE_FAILED, DELETE_FAILED.
  final pulumi.Input<String>? state;
  /// The resource on which the posture should be deployed. This can be in one of the following formats:
  /// projects/{project_number},
  /// folders/{folder_number},
  /// organizations/{organization_id}
  final pulumi.Input<String>? targetResource;
  /// Time the posture deployment was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [PostureDeploymentState].
  /// [createTime] Time the posture deployment was created in UTC.
  /// [description] Description of the posture deployment.
  /// [desiredPostureId] This is an output only optional field which will be filled in case when
  /// [desiredPostureRevisionId] This is an output only optional field which will be filled in case when
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [failureMessage] This is a output only optional field which will be filled in case where
  /// [location] The location of the resource, eg. global`.
  /// [name] Name of the posture deployment instance.
  /// [parent] The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  /// [postureDeploymentId] ID of the posture deployment.
  /// [postureId] Relative name of the posture which needs to be deployed. It should be in the format:
  /// [postureRevisionId] Revision_id the posture which needs to be deployed.
  /// [reconciling] If set, there are currently changes in flight to the posture deployment.
  /// [state] State of the posture deployment. A posture deployment can be in the following terminal states:
  /// [targetResource] The resource on which the posture should be deployed. This can be in one of the following formats:
  /// [updateTime] Time the posture deployment was updated in UTC.
  PostureDeploymentState({
    this.createTime,
    this.description,
    this.desiredPostureId,
    this.desiredPostureRevisionId,
    this.etag,
    this.failureMessage,
    this.location,
    this.name,
    this.parent,
    this.postureDeploymentId,
    this.postureId,
    this.postureRevisionId,
    this.reconciling,
    this.state,
    this.targetResource,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'desiredPostureId': ?desiredPostureId,
      'desiredPostureRevisionId': ?desiredPostureRevisionId,
      'etag': ?etag,
      'failureMessage': ?failureMessage,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'postureDeploymentId': ?postureDeploymentId,
      'postureId': ?postureId,
      'postureRevisionId': ?postureRevisionId,
      'reconciling': ?reconciling,
      'state': ?state,
      'targetResource': ?targetResource,
      'updateTime': ?updateTime,
    };
  }

  factory PostureDeploymentState.fromMap(Map<String, dynamic> map) {
    return PostureDeploymentState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      desiredPostureId: map['desiredPostureId'] == null ? null : (map['desiredPostureId']! as String).input(),
      desiredPostureRevisionId: map['desiredPostureRevisionId'] == null ? null : (map['desiredPostureRevisionId']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      failureMessage: map['failureMessage'] == null ? null : (map['failureMessage']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      postureDeploymentId: map['postureDeploymentId'] == null ? null : (map['postureDeploymentId']! as String).input(),
      postureId: map['postureId'] == null ? null : (map['postureId']! as String).input(),
      postureRevisionId: map['postureRevisionId'] == null ? null : (map['postureRevisionId']! as String).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      targetResource: map['targetResource'] == null ? null : (map['targetResource']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

