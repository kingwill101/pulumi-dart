// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalabeling_v1beta1_feedback_message_args_doc}
/// The set of arguments for FeedbackMessage.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_feedback_message_args_doc}
class FeedbackMessageArgs {
  final pulumi.Input<String> annotatedDatasetId;
  /// String content of the feedback. Maximum of 10000 characters.
  final pulumi.Input<String>? body;
  /// Create time.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> feedbackThreadId;
  /// The image storing this feedback if the feedback is an image representing operator's comments.
  final pulumi.Input<String>? image;
  /// Name of the feedback message in a feedback thread. Format: 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessage/{feedback_message_id}'
  final pulumi.Input<String>? name;
  final pulumi.Input<Map<String, dynamic>>? operatorFeedbackMetadata;
  final pulumi.Input<String>? project;
  final pulumi.Input<Map<String, dynamic>>? requesterFeedbackMetadata;

  /// Creates a new [FeedbackMessageArgs].
  /// [annotatedDatasetId] Required.
  /// [body] String content of the feedback. Maximum of 10000 characters.
  /// [createTime] Create time.
  /// [datasetId] Required.
  /// [feedbackThreadId] Required.
  /// [image] The image storing this feedback if the feedback is an image representing operator's comments.
  /// [name] Name of the feedback message in a feedback thread. Format: 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessage/{feedback_message_id}'
  /// [operatorFeedbackMetadata] Optional.
  /// [project] Optional.
  /// [requesterFeedbackMetadata] Optional.
  FeedbackMessageArgs({
    required pulumi.Output<String> annotatedDatasetId,
    pulumi.Output<String>? body,
    pulumi.Output<String>? createTime,
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> feedbackThreadId,
    pulumi.Output<String>? image,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, dynamic>>? operatorFeedbackMetadata,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, dynamic>>? requesterFeedbackMetadata,
  }) :
      annotatedDatasetId = pulumi.Input.asInput<String>(annotatedDatasetId),
      body = pulumi.Input.asOptionalInput<String>(body),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      feedbackThreadId = pulumi.Input.asInput<String>(feedbackThreadId),
      image = pulumi.Input.asOptionalInput<String>(image),
      name = pulumi.Input.asOptionalInput<String>(name),
      operatorFeedbackMetadata = pulumi.Input.asOptionalInput<Map<String, dynamic>>(operatorFeedbackMetadata),
      project = pulumi.Input.asOptionalInput<String>(project),
      requesterFeedbackMetadata = pulumi.Input.asOptionalInput<Map<String, dynamic>>(requesterFeedbackMetadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotatedDatasetId': annotatedDatasetId,
      'body': ?body,
      'createTime': ?createTime,
      'datasetId': datasetId,
      'feedbackThreadId': feedbackThreadId,
      'image': ?image,
      'name': ?name,
      'operatorFeedbackMetadata': ?operatorFeedbackMetadata,
      'project': ?project,
      'requesterFeedbackMetadata': ?requesterFeedbackMetadata,
    };
  }

  factory FeedbackMessageArgs.fromMap(Map<String, dynamic> map) {
    return FeedbackMessageArgs(
      annotatedDatasetId: pulumi.Output.create<String>(map['annotatedDatasetId'] as String),
      body: map['body'] == null ? null : pulumi.Output.create<String>(map['body'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      feedbackThreadId: pulumi.Output.create<String>(map['feedbackThreadId'] as String),
      image: map['image'] == null ? null : pulumi.Output.create<String>(map['image'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      operatorFeedbackMetadata: map['operatorFeedbackMetadata'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['operatorFeedbackMetadata'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requesterFeedbackMetadata: map['requesterFeedbackMetadata'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['requesterFeedbackMetadata'] as Map).cast<String, dynamic>()),
    );
  }
}

