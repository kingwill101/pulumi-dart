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
    required this.annotatedDatasetId,
    this.body,
    this.createTime,
    required this.datasetId,
    required this.feedbackThreadId,
    this.image,
    this.name,
    this.operatorFeedbackMetadata,
    this.project,
    this.requesterFeedbackMetadata,
  });

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
      annotatedDatasetId: (map['annotatedDatasetId'] as String).input(),
      body: map['body'] == null ? null : (map['body'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      feedbackThreadId: (map['feedbackThreadId'] as String).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      operatorFeedbackMetadata: map['operatorFeedbackMetadata'] == null ? null : ((map['operatorFeedbackMetadata'] as Map).cast<String, dynamic>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requesterFeedbackMetadata: map['requesterFeedbackMetadata'] == null ? null : ((map['requesterFeedbackMetadata'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

