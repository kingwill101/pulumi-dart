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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? desiredPostureId,
    pulumi.Output<String>? desiredPostureRevisionId,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? failureMessage,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? postureDeploymentId,
    pulumi.Output<String>? postureId,
    pulumi.Output<String>? postureRevisionId,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<String>? targetResource,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      desiredPostureId = pulumi.Input.asOptionalInput<String>(desiredPostureId),
      desiredPostureRevisionId = pulumi.Input.asOptionalInput<String>(desiredPostureRevisionId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      failureMessage = pulumi.Input.asOptionalInput<String>(failureMessage),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      postureDeploymentId = pulumi.Input.asOptionalInput<String>(postureDeploymentId),
      postureId = pulumi.Input.asOptionalInput<String>(postureId),
      postureRevisionId = pulumi.Input.asOptionalInput<String>(postureRevisionId),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      targetResource = pulumi.Input.asOptionalInput<String>(targetResource),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      desiredPostureId: map['desiredPostureId'] == null ? null : pulumi.Output.create<String>(map['desiredPostureId'] as String),
      desiredPostureRevisionId: map['desiredPostureRevisionId'] == null ? null : pulumi.Output.create<String>(map['desiredPostureRevisionId'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      failureMessage: map['failureMessage'] == null ? null : pulumi.Output.create<String>(map['failureMessage'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      postureDeploymentId: map['postureDeploymentId'] == null ? null : pulumi.Output.create<String>(map['postureDeploymentId'] as String),
      postureId: map['postureId'] == null ? null : pulumi.Output.create<String>(map['postureId'] as String),
      postureRevisionId: map['postureRevisionId'] == null ? null : pulumi.Output.create<String>(map['postureRevisionId'] as String),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      targetResource: map['targetResource'] == null ? null : pulumi.Output.create<String>(map['targetResource'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

