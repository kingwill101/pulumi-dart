// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This encapsulates a metric property of the form sum(message_count) where name is message_count and function is sum
class GoogleCloudApigeeV1CustomReportMetricResponse {
  /// aggregate function
  final pulumi.Input<String> function;

  /// name of the metric
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudApigeeV1CustomReportMetricResponse].
  /// [function] aggregate function
  /// [name] name of the metric
  GoogleCloudApigeeV1CustomReportMetricResponse({
    required this.function,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'function': function, 'name': name};
  }

  factory GoogleCloudApigeeV1CustomReportMetricResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1CustomReportMetricResponse(
      function: pulumi.Input.fromValue(map['function'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
