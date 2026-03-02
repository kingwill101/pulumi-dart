// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_v1_rollout_args_doc}
/// The set of arguments for Rollout.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_rollout_args_doc}
class RolloutArgs {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<String> deliveryPipelineId;
  /// Description of the `Rollout` for user purposes. Max length is 255 characters.
  final pulumi.Input<String>? description;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Name of the `Rollout`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseId;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Required. ID of the `Rollout`.
  final pulumi.Input<String> rolloutId;
  /// Optional. The starting phase ID for the `Rollout`. If empty the `Rollout` will start at the first phase.
  final pulumi.Input<String>? startingPhaseId;
  /// The ID of Target to which this `Rollout` is deploying.
  final pulumi.Input<String> targetId;

  /// Creates a new [RolloutArgs].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// [deliveryPipelineId] Required.
  /// [description] Description of the `Rollout` for user purposes. Max length is 255 characters.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// [location] Optional.
  /// [name] Optional. Name of the `Rollout`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  /// [project] Optional.
  /// [releaseId] Required.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [rolloutId] Required. ID of the `Rollout`.
  /// [startingPhaseId] Optional. The starting phase ID for the `Rollout`. If empty the `Rollout` will start at the first phase.
  /// [targetId] The ID of Target to which this `Rollout` is deploying.
  RolloutArgs({
    this.annotations,
    required this.deliveryPipelineId,
    this.description,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.project,
    required this.releaseId,
    this.requestId,
    required this.rolloutId,
    this.startingPhaseId,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'deliveryPipelineId': deliveryPipelineId,
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'releaseId': releaseId,
      'requestId': ?requestId,
      'rolloutId': rolloutId,
      'startingPhaseId': ?startingPhaseId,
      'targetId': targetId,
    };
  }

  factory RolloutArgs.fromMap(Map<String, dynamic> map) {
    return RolloutArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      deliveryPipelineId: (map['deliveryPipelineId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      releaseId: (map['releaseId'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      rolloutId: (map['rolloutId'] as String).input(),
      startingPhaseId: map['startingPhaseId'] == null ? null : (map['startingPhaseId']! as String).input(),
      targetId: (map['targetId'] as String).input(),
    );
  }
}

