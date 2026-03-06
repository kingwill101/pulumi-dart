// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the data scan execution.
class GoogleCloudDataplexV1DataScanExecutionStatusResponse {
  /// The time when the latest DataScanJob ended.
  final pulumi.Input<String> latestJobEndTime;
  /// The time when the latest DataScanJob started.
  final pulumi.Input<String> latestJobStartTime;

  /// Creates a new [GoogleCloudDataplexV1DataScanExecutionStatusResponse].
  /// [latestJobEndTime] The time when the latest DataScanJob ended.
  /// [latestJobStartTime] The time when the latest DataScanJob started.
  const GoogleCloudDataplexV1DataScanExecutionStatusResponse({
    required this.latestJobEndTime,
    required this.latestJobStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestJobEndTime': latestJobEndTime,
      'latestJobStartTime': latestJobStartTime,
    };
  }

  factory GoogleCloudDataplexV1DataScanExecutionStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataScanExecutionStatusResponse(
      latestJobEndTime: pulumi.Input.fromValue(map['latestJobEndTime'] as String),
      latestJobStartTime: pulumi.Input.fromValue(map['latestJobStartTime'] as String),
    );
  }
}

