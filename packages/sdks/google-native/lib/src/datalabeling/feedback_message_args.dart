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
      annotatedDatasetId: pulumi.Input.fromValue(
        map['annotatedDatasetId'] as String,
      ),
      body: (() {
        final guardedValue = map['body'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      feedbackThreadId: pulumi.Input.fromValue(
        map['feedbackThreadId'] as String,
      ),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operatorFeedbackMetadata: (() {
        final guardedValue = map['operatorFeedbackMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requesterFeedbackMetadata: (() {
        final guardedValue = map['requesterFeedbackMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
