// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria {
  /// The ID of the Application Insights Resource.
  final pulumi.Input<String> componentId;

  /// The number of failed locations.
  final pulumi.Input<int> failedLocationCount;

  /// The ID of the Application Insights Web Test.
  final pulumi.Input<String> webTestId;

  /// Creates a new [MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria].
  /// [componentId] The ID of the Application Insights Resource.
  /// [failedLocationCount] The number of failed locations.
  /// [webTestId] The ID of the Application Insights Web Test.
  MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria({
    required this.componentId,
    required this.failedLocationCount,
    required this.webTestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': componentId,
      'failedLocationCount': failedLocationCount,
      'webTestId': webTestId,
    };
  }

  factory MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria.fromMap(
    Map<String, dynamic> map,
  ) {
    return MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria(
      componentId: pulumi.Input.fromValue(map['componentId'] as String),
      failedLocationCount: pulumi.Input.fromValue(
        map['failedLocationCount'] as int,
      ),
      webTestId: pulumi.Input.fromValue(map['webTestId'] as String),
    );
  }
}
