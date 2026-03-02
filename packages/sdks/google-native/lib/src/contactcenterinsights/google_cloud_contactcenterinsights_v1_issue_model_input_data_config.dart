// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_issue_model_input_data_config_medium.dart';

/// Configs for the input data used to create the issue model.
class GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig {
  /// A filter to reduce the conversations used for training the model to a specific subset.
  final pulumi.Input<String>? filter;
  /// Medium of conversations used in training data. This field is being deprecated. To specify the medium to be used in training a new issue model, set the `medium` field on `filter`.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigMedium>? medium;

  /// Creates a new [GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig].
  /// [filter] A filter to reduce the conversations used for training the model to a specific subset.
  /// [medium] Medium of conversations used in training data. This field is being deprecated. To specify the medium to be used in training a new issue model, set the `medium` field on `filter`.
  GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig({
    this.filter,
    this.medium,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'medium': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigMedium, String>(medium, (value) => value.value),
    };
  }

  factory GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig(
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      medium: map['medium'] == null ? null : (GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigMedium.fromValue(map['medium']! as String)).input(),
    );
  }
}

