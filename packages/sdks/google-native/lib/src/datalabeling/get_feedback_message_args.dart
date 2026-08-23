// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalabeling_v1beta1_get_feedback_message_args_doc}
/// Arguments for getFeedbackMessage.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_get_feedback_message_args_doc}
class GetFeedbackMessageArgs {
  final pulumi.Input<String> annotatedDatasetId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> feedbackMessageId;
  final pulumi.Input<String> feedbackThreadId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFeedbackMessageArgs].
  /// [annotatedDatasetId] Required.
  /// [datasetId] Required.
  /// [feedbackMessageId] Required.
  /// [feedbackThreadId] Required.
  /// [project] Optional.
  const GetFeedbackMessageArgs({
    required this.annotatedDatasetId,
    required this.datasetId,
    required this.feedbackMessageId,
    required this.feedbackThreadId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotatedDatasetId': annotatedDatasetId,
      'datasetId': datasetId,
      'feedbackMessageId': feedbackMessageId,
      'feedbackThreadId': feedbackThreadId,
      'project': ?project,
    };
  }

  factory GetFeedbackMessageArgs.fromMap(Map<String, dynamic> map) {
    return GetFeedbackMessageArgs(
      annotatedDatasetId: pulumi.Input.fromValue(map['annotatedDatasetId'] as String),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      feedbackMessageId: pulumi.Input.fromValue(map['feedbackMessageId'] as String),
      feedbackThreadId: pulumi.Input.fromValue(map['feedbackThreadId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
