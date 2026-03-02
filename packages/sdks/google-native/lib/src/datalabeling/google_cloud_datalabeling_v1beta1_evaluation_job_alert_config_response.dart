// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides details for how an evaluation job sends email alerts based on the results of a run.
class GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfigResponse {
  /// An email address to send alerts to.
  final pulumi.Input<String> email;
  /// A number between 0 and 1 that describes a minimum mean average precision threshold. When the evaluation job runs, if it calculates that your model version's predictions from the recent interval have meanAveragePrecision below this threshold, then it sends an alert to your specified email.
  final pulumi.Input<double> minAcceptableMeanAveragePrecision;

  /// Creates a new [GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfigResponse].
  /// [email] An email address to send alerts to.
  /// [minAcceptableMeanAveragePrecision] A number between 0 and 1 that describes a minimum mean average precision threshold. When the evaluation job runs, if it calculates that your model version's predictions from the recent interval have meanAveragePrecision below this threshold, then it sends an alert to your specified email.
  GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfigResponse({
    required this.email,
    required this.minAcceptableMeanAveragePrecision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'minAcceptableMeanAveragePrecision': minAcceptableMeanAveragePrecision,
    };
  }

  factory GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfigResponse(
      email: (map['email'] as String).input(),
      minAcceptableMeanAveragePrecision: (map['minAcceptableMeanAveragePrecision'] as double).input(),
    );
  }
}

