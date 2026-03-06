// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_logging_info_response.dart';

class SparkStatisticsResponse {
  /// Endpoints generated for the Spark job.
  final pulumi.Input<Map<String, String>> endpoints;
  /// Logging info is used to generate a link to Cloud Logging.
  final pulumi.Input<SparkLoggingInfoResponse> loggingInfo;
  /// Spark job id if a Spark job is created successfully.
  final pulumi.Input<String> sparkJobId;
  /// Location where the Spark job is executed.
  final pulumi.Input<String> sparkJobLocation;

  /// Creates a new [SparkStatisticsResponse].
  /// [endpoints] Endpoints generated for the Spark job.
  /// [loggingInfo] Logging info is used to generate a link to Cloud Logging.
  /// [sparkJobId] Spark job id if a Spark job is created successfully.
  /// [sparkJobLocation] Location where the Spark job is executed.
  const SparkStatisticsResponse({
    required this.endpoints,
    required this.loggingInfo,
    required this.sparkJobId,
    required this.sparkJobLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': endpoints,
      'loggingInfo': pulumi.Input.mapInputValue<SparkLoggingInfoResponse, Map<String, dynamic>>(loggingInfo, (value) => value.toMap()),
      'sparkJobId': sparkJobId,
      'sparkJobLocation': sparkJobLocation,
    };
  }

  factory SparkStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return SparkStatisticsResponse(
      endpoints: pulumi.Input.fromValue((map['endpoints'] as Map).cast<String, String>()),
      loggingInfo: pulumi.Input.fromValue(SparkLoggingInfoResponse.fromMap((map['loggingInfo']! as Map).cast<String, dynamic>())),
      sparkJobId: pulumi.Input.fromValue(map['sparkJobId'] as String),
      sparkJobLocation: pulumi.Input.fromValue(map['sparkJobLocation'] as String),
    );
  }
}

