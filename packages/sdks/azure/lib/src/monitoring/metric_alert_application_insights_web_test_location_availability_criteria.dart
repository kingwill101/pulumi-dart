// ignore_for_file: unused_element, unnecessary_cast


class MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria {
  /// The ID of the Application Insights Resource.
  final String componentId;
  /// The number of failed locations.
  final int failedLocationCount;
  /// The ID of the Application Insights Web Test.
  final String webTestId;

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

  factory MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria.fromMap(Map<String, dynamic> map) {
    return MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria(
      componentId: map['componentId'] as String,
      failedLocationCount: map['failedLocationCount'] as int,
      webTestId: map['webTestId'] as String,
    );
  }
}

