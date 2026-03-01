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
    required pulumi.Output<String> annotatedDatasetId,
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> feedbackMessageId,
    required pulumi.Output<String> feedbackThreadId,
    pulumi.Output<String>? project,
  }) :
      annotatedDatasetId = pulumi.Input.asInput<String>(annotatedDatasetId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      feedbackMessageId = pulumi.Input.asInput<String>(feedbackMessageId),
      feedbackThreadId = pulumi.Input.asInput<String>(feedbackThreadId),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      annotatedDatasetId: pulumi.Output.create<String>(map['annotatedDatasetId'] as String),
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      feedbackMessageId: pulumi.Output.create<String>(map['feedbackMessageId'] as String),
      feedbackThreadId: pulumi.Output.create<String>(map['feedbackThreadId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

