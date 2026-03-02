// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_config_custom_headers_item_response.dart';
import 'monitor_config_expected_status_code_ranges_item_response.dart';

/// Class containing endpoint monitoring settings in a Traffic Manager profile.
class MonitorConfigResponse {
  /// List of custom headers.
  final pulumi.Input<List<MonitorConfigCustomHeadersItemResponse>>? customHeaders;
  /// List of expected status code ranges.
  final pulumi.Input<List<MonitorConfigExpectedStatusCodeRangesItemResponse>>? expectedStatusCodeRanges;
  /// The monitor interval for endpoints in this profile. This is the interval at which Traffic Manager will check the health of each endpoint in this profile.
  final pulumi.Input<double>? intervalInSeconds;
  /// The path relative to the endpoint domain name used to probe for endpoint health.
  final pulumi.Input<String>? path;
  /// The TCP port used to probe for endpoint health.
  final pulumi.Input<double>? port;
  /// The profile-level monitoring status of the Traffic Manager profile.
  final pulumi.Input<String>? profileMonitorStatus;
  /// The protocol (HTTP, HTTPS or TCP) used to probe for endpoint health.
  final pulumi.Input<String>? protocol;
  /// The monitor timeout for endpoints in this profile. This is the time that Traffic Manager allows endpoints in this profile to response to the health check.
  final pulumi.Input<double>? timeoutInSeconds;
  /// The number of consecutive failed health check that Traffic Manager tolerates before declaring an endpoint in this profile Degraded after the next failed health check.
  final pulumi.Input<double>? toleratedNumberOfFailures;

  /// Creates a new [MonitorConfigResponse].
  /// [customHeaders] List of custom headers.
  /// [expectedStatusCodeRanges] List of expected status code ranges.
  /// [intervalInSeconds] The monitor interval for endpoints in this profile. This is the interval at which Traffic Manager will check the health of each endpoint in this profile.
  /// [path] The path relative to the endpoint domain name used to probe for endpoint health.
  /// [port] The TCP port used to probe for endpoint health.
  /// [profileMonitorStatus] The profile-level monitoring status of the Traffic Manager profile.
  /// [protocol] The protocol (HTTP, HTTPS or TCP) used to probe for endpoint health.
  /// [timeoutInSeconds] The monitor timeout for endpoints in this profile. This is the time that Traffic Manager allows endpoints in this profile to response to the health check.
  /// [toleratedNumberOfFailures] The number of consecutive failed health check that Traffic Manager tolerates before declaring an endpoint in this profile Degraded after the next failed health check.
  MonitorConfigResponse({
    this.customHeaders,
    this.expectedStatusCodeRanges,
    this.intervalInSeconds,
    this.path,
    this.port,
    this.profileMonitorStatus,
    this.protocol,
    this.timeoutInSeconds,
    this.toleratedNumberOfFailures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHeaders': ?pulumi.Input.mapOptionalInputValue<List<MonitorConfigCustomHeadersItemResponse>, List<Map<String, dynamic>>>(customHeaders, (value) => pulumi.Input.encodeList<MonitorConfigCustomHeadersItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expectedStatusCodeRanges': ?pulumi.Input.mapOptionalInputValue<List<MonitorConfigExpectedStatusCodeRangesItemResponse>, List<Map<String, dynamic>>>(expectedStatusCodeRanges, (value) => pulumi.Input.encodeList<MonitorConfigExpectedStatusCodeRangesItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'intervalInSeconds': ?intervalInSeconds,
      'path': ?path,
      'port': ?port,
      'profileMonitorStatus': ?profileMonitorStatus,
      'protocol': ?protocol,
      'timeoutInSeconds': ?timeoutInSeconds,
      'toleratedNumberOfFailures': ?toleratedNumberOfFailures,
    };
  }

  factory MonitorConfigResponse.fromMap(Map<String, dynamic> map) {
    return MonitorConfigResponse(
      customHeaders: map['customHeaders'] == null ? null : (pulumi.Input.decodeList<MonitorConfigCustomHeadersItemResponse>(map['customHeaders']!, (value) => MonitorConfigCustomHeadersItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      expectedStatusCodeRanges: map['expectedStatusCodeRanges'] == null ? null : (pulumi.Input.decodeList<MonitorConfigExpectedStatusCodeRangesItemResponse>(map['expectedStatusCodeRanges']!, (value) => MonitorConfigExpectedStatusCodeRangesItemResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      intervalInSeconds: map['intervalInSeconds'] == null ? null : (map['intervalInSeconds']! as double).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as double).input(),
      profileMonitorStatus: map['profileMonitorStatus'] == null ? null : (map['profileMonitorStatus']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : (map['timeoutInSeconds']! as double).input(),
      toleratedNumberOfFailures: map['toleratedNumberOfFailures'] == null ? null : (map['toleratedNumberOfFailures']! as double).input(),
    );
  }
}

