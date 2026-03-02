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
  GetFeedbackMessageArgs({
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
      annotatedDatasetId: (map['annotatedDatasetId'] as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      feedbackMessageId: (map['feedbackMessageId'] as String).input(),
      feedbackThreadId: (map['feedbackThreadId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

