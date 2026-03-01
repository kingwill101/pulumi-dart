// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_manager_profile_monitor_config_custom_header.dart';

class TrafficManagerProfileMonitorConfig {
  /// One or more `custom_header` blocks as defined below.
  final List<TrafficManagerProfileMonitorConfigCustomHeader>? customHeaders;
  /// A list of status code ranges in the format of `100-101`.
  final List<String>? expectedStatusCodeRanges;
  /// The interval used to check the endpoint health from a Traffic Manager probing agent. You can specify two values here: `30` (normal probing) and `10` (fast probing). The default value is `30`.
  final int? intervalInSeconds;
  /// The path used by the monitoring checks. Required when `protocol` is set to `HTTP` or `HTTPS` - cannot be set when `protocol` is set to `TCP`.
  final String? path;
  /// The port number used by the monitoring checks.
  final int port;
  /// The protocol used by the monitoring checks, supported values are `HTTP`, `HTTPS` and `TCP`.
  final String protocol;
  /// The amount of time the Traffic Manager probing agent should wait before considering that check a failure when a health check probe is sent to the endpoint. If `interval_in_seconds` is set to `30`, then `timeout_in_seconds` can be between `5` and `10`. The default value is `10`. If `interval_in_seconds` is set to `10`, then valid values are between `5` and `9` and `timeout_in_seconds` is required.
  final int? timeoutInSeconds;
  /// The number of failures a Traffic Manager probing agent tolerates before marking that endpoint as unhealthy. Valid values are between `0` and `9`. The default value is `3`
  final int? toleratedNumberOfFailures;

  /// Creates a new [TrafficManagerProfileMonitorConfig].
  /// [customHeaders] One or more `custom_header` blocks as defined below.
  /// [expectedStatusCodeRanges] A list of status code ranges in the format of `100-101`.
  /// [intervalInSeconds] The interval used to check the endpoint health from a Traffic Manager probing agent. You can specify two values here: `30` (normal probing) and `10` (fast probing). The default value is `30`.
  /// [path] The path used by the monitoring checks. Required when `protocol` is set to `HTTP` or `HTTPS` - cannot be set when `protocol` is set to `TCP`.
  /// [port] The port number used by the monitoring checks.
  /// [protocol] The protocol used by the monitoring checks, supported values are `HTTP`, `HTTPS` and `TCP`.
  /// [timeoutInSeconds] The amount of time the Traffic Manager probing agent should wait before considering that check a failure when a health check probe is sent to the endpoint. If `interval_in_seconds` is set to `30`, then `timeout_in_seconds` can be between `5` and `10`. The default value is `10`. If `interval_in_seconds` is set to `10`, then valid values are between `5` and `9` and `timeout_in_seconds` is required.
  /// [toleratedNumberOfFailures] The number of failures a Traffic Manager probing agent tolerates before marking that endpoint as unhealthy. Valid values are between `0` and `9`. The default value is `3`
  TrafficManagerProfileMonitorConfig({
    this.customHeaders,
    this.expectedStatusCodeRanges,
    this.intervalInSeconds,
    this.path,
    required this.port,
    required this.protocol,
    this.timeoutInSeconds,
    this.toleratedNumberOfFailures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHeaders': ?customHeaders == null ? null : pulumi.Input.encodeList<TrafficManagerProfileMonitorConfigCustomHeader, Map<String, dynamic>>(customHeaders!, (value) => value.toMap()),
      'expectedStatusCodeRanges': ?expectedStatusCodeRanges,
      'intervalInSeconds': ?intervalInSeconds,
      'path': ?path,
      'port': port,
      'protocol': protocol,
      'timeoutInSeconds': ?timeoutInSeconds,
      'toleratedNumberOfFailures': ?toleratedNumberOfFailures,
    };
  }

  factory TrafficManagerProfileMonitorConfig.fromMap(Map<String, dynamic> map) {
    return TrafficManagerProfileMonitorConfig(
      customHeaders: map['customHeaders'] == null ? null : pulumi.Input.decodeList<TrafficManagerProfileMonitorConfigCustomHeader>(map['customHeaders'], (value) => TrafficManagerProfileMonitorConfigCustomHeader.fromMap((value as Map).cast<String, dynamic>())),
      expectedStatusCodeRanges: map['expectedStatusCodeRanges'] == null ? null : (map['expectedStatusCodeRanges'] as List).cast<String>(),
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as int,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as int,
      toleratedNumberOfFailures: map['toleratedNumberOfFailures'] == null ? null : map['toleratedNumberOfFailures'] as int,
    );
  }
}

