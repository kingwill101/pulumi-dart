// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configs for the input data used to create the issue model.
class GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse {
  /// A filter to reduce the conversations used for training the model to a specific subset.
  final pulumi.Input<String> filter;
  /// Medium of conversations used in training data. This field is being deprecated. To specify the medium to be used in training a new issue model, set the `medium` field on `filter`.
  final pulumi.Input<String> medium;
  /// Number of conversations used in training. Output only.
  final pulumi.Input<String> trainingConversationsCount;

  /// Creates a new [GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse].
  /// [filter] A filter to reduce the conversations used for training the model to a specific subset.
  /// [medium] Medium of conversations used in training data. This field is being deprecated. To specify the medium to be used in training a new issue model, set the `medium` field on `filter`.
  /// [trainingConversationsCount] Number of conversations used in training. Output only.
  const GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse({
    required this.filter,
    required this.medium,
    required this.trainingConversationsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'medium': medium,
      'trainingConversationsCount': trainingConversationsCount,
    };
  }

  factory GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse(
      filter: pulumi.Input.fromValue(map['filter'] as String),
      medium: pulumi.Input.fromValue(map['medium'] as String),
      trainingConversationsCount: pulumi.Input.fromValue(map['trainingConversationsCount'] as String),
    );
  }
}

