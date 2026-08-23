// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_response.dart';
import 'phase_response.dart';

/// Result data returned by getRollout.
class GetRolloutResult {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final Map<String, String> annotations;
  /// Approval state of the `Rollout`.
  final String approvalState;
  /// Time at which the `Rollout` was approved.
  final String approveTime;
  /// Name of the `ControllerRollout`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  final String controllerRollout;
  /// Time at which the `Rollout` was created.
  final String createTime;
  /// Time at which the `Rollout` finished deploying.
  final String deployEndTime;
  /// The reason this rollout failed. This will always be unspecified while the rollout is in progress.
  final String deployFailureCause;
  /// Time at which the `Rollout` started deploying.
  final String deployStartTime;
  /// The resource name of the Cloud Build `Build` object that is used to deploy the Rollout. Format is `projects/{project}/locations/{location}/builds/{build}`.
  final String deployingBuild;
  /// Description of the `Rollout` for user purposes. Max length is 255 characters.
  final String description;
  /// Time at which the `Rollout` was enqueued.
  final String enqueueTime;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;
  /// Additional information about the rollout failure, if available.
  final String failureReason;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  final Map<String, String> labels;
  /// Metadata contains information about the rollout.
  final MetadataResponse metadata;
  /// Optional. Name of the `Rollout`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  final String name;
  /// The phases that represent the workflows of this `Rollout`.
  final List<PhaseResponse> phases;
  /// Name of the `Rollout` that is rolled back by this `Rollout`. Empty if this `Rollout` wasn't created as a rollback.
  final String rollbackOfRollout;
  /// Names of `Rollouts` that rolled back this `Rollout`.
  final List<String> rolledBackByRollouts;
  /// Current state of the `Rollout`.
  final String state;
  /// The ID of Target to which this `Rollout` is deploying.
  final String targetId;
  /// Unique identifier of the `Rollout`.
  final String uid;

  /// Creates a new [GetRolloutResult].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [approvalState] Approval state of the `Rollout`.
  /// [approveTime] Time at which the `Rollout` was approved.
  /// [controllerRollout] Name of the `ControllerRollout`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  /// [createTime] Time at which the `Rollout` was created.
  /// [deployEndTime] Time at which the `Rollout` finished deploying.
  /// [deployFailureCause] The reason this rollout failed. This will always be unspecified while the rollout is in progress.
  /// [deployStartTime] Time at which the `Rollout` started deploying.
  /// [deployingBuild] The resource name of the Cloud Build `Build` object that is used to deploy the Rollout. Format is `projects/{project}/locations/{location}/builds/{build}`.
  /// [description] Description of the `Rollout` for user purposes. Max length is 255 characters.
  /// [enqueueTime] Time at which the `Rollout` was enqueued.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [failureReason] Additional information about the rollout failure, if available.
  /// [labels] Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes.
  /// [metadata] Metadata contains information about the rollout.
  /// [name] Optional. Name of the `Rollout`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  /// [phases] The phases that represent the workflows of this `Rollout`.
  /// [rollbackOfRollout] Name of the `Rollout` that is rolled back by this `Rollout`. Empty if this `Rollout` wasn't created as a rollback.
  /// [rolledBackByRollouts] Names of `Rollouts` that rolled back this `Rollout`.
  /// [state] Current state of the `Rollout`.
  /// [targetId] The ID of Target to which this `Rollout` is deploying.
  /// [uid] Unique identifier of the `Rollout`.
  const GetRolloutResult({
    required this.annotations,
    required this.approvalState,
    required this.approveTime,
    required this.controllerRollout,
    required this.createTime,
    required this.deployEndTime,
    required this.deployFailureCause,
    required this.deployStartTime,
    required this.deployingBuild,
    required this.description,
    required this.enqueueTime,
    required this.etag,
    required this.failureReason,
    required this.labels,
    required this.metadata,
    required this.name,
    required this.phases,
    required this.rollbackOfRollout,
    required this.rolledBackByRollouts,
    required this.state,
    required this.targetId,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'approvalState': approvalState,
      'approveTime': approveTime,
      'controllerRollout': controllerRollout,
      'createTime': createTime,
      'deployEndTime': deployEndTime,
      'deployFailureCause': deployFailureCause,
      'deployStartTime': deployStartTime,
      'deployingBuild': deployingBuild,
      'description': description,
      'enqueueTime': enqueueTime,
      'etag': etag,
      'failureReason': failureReason,
      'labels': labels,
      'metadata': metadata.toMap(),
      'name': name,
      'phases': pulumi.Input.encodeList<PhaseResponse, Map<String, dynamic>>(phases, (value) => value.toMap()),
      'rollbackOfRollout': rollbackOfRollout,
      'rolledBackByRollouts': rolledBackByRollouts,
      'state': state,
      'targetId': targetId,
      'uid': uid,
    };
  }

  factory GetRolloutResult.fromMap(Map<String, dynamic> map) {
    return GetRolloutResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      approvalState: map['approvalState'] as String,
      approveTime: map['approveTime'] as String,
      controllerRollout: map['controllerRollout'] as String,
      createTime: map['createTime'] as String,
      deployEndTime: map['deployEndTime'] as String,
      deployFailureCause: map['deployFailureCause'] as String,
      deployStartTime: map['deployStartTime'] as String,
      deployingBuild: map['deployingBuild'] as String,
      description: map['description'] as String,
      enqueueTime: map['enqueueTime'] as String,
      etag: map['etag'] as String,
      failureReason: map['failureReason'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metadata: MetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      phases: pulumi.Input.decodeList<PhaseResponse>(map['phases']!, (value) => PhaseResponse.fromMap((value as Map).cast<String, dynamic>())),
      rollbackOfRollout: map['rollbackOfRollout'] as String,
      rolledBackByRollouts: (map['rolledBackByRollouts'] as List).cast<String>(),
      state: map['state'] as String,
      targetId: map['targetId'] as String,
      uid: map['uid'] as String,
    );
  }
}
