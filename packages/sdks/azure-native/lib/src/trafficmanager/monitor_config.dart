// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_config_custom_headers_item.dart';
import 'monitor_config_expected_status_code_ranges_item.dart';

/// Class containing endpoint monitoring settings in a Traffic Manager profile.
class MonitorConfig {
  /// List of custom headers.
  final pulumi.Input<List<MonitorConfigCustomHeadersItem>>? customHeaders;
  /// List of expected status code ranges.
  final pulumi.Input<List<MonitorConfigExpectedStatusCodeRangesItem>>? expectedStatusCodeRanges;
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

  /// Creates a new [MonitorConfig].
  /// [customHeaders] List of custom headers.
  /// [expectedStatusCodeRanges] List of expected status code ranges.
  /// [intervalInSeconds] The monitor interval for endpoints in this profile. This is the interval at which Traffic Manager will check the health of each endpoint in this profile.
  /// [path] The path relative to the endpoint domain name used to probe for endpoint health.
  /// [port] The TCP port used to probe for endpoint health.
  /// [profileMonitorStatus] The profile-level monitoring status of the Traffic Manager profile.
  /// [protocol] The protocol (HTTP, HTTPS or TCP) used to probe for endpoint health.
  /// [timeoutInSeconds] The monitor timeout for endpoints in this profile. This is the time that Traffic Manager allows endpoints in this profile to response to the health check.
  /// [toleratedNumberOfFailures] The number of consecutive failed health check that Traffic Manager tolerates before declaring an endpoint in this profile Degraded after the next failed health check.
  MonitorConfig({
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
      'customHeaders': ?pulumi.Input.mapOptionalInputValue<List<MonitorConfigCustomHeadersItem>, List<Map<String, dynamic>>>(customHeaders, (value) => pulumi.Input.encodeList<MonitorConfigCustomHeadersItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expectedStatusCodeRanges': ?pulumi.Input.mapOptionalInputValue<List<MonitorConfigExpectedStatusCodeRangesItem>, List<Map<String, dynamic>>>(expectedStatusCodeRanges, (value) => pulumi.Input.encodeList<MonitorConfigExpectedStatusCodeRangesItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'intervalInSeconds': ?intervalInSeconds,
      'path': ?path,
      'port': ?port,
      'profileMonitorStatus': ?profileMonitorStatus,
      'protocol': ?protocol,
      'timeoutInSeconds': ?timeoutInSeconds,
      'toleratedNumberOfFailures': ?toleratedNumberOfFailures,
    };
  }

  factory MonitorConfig.fromMap(Map<String, dynamic> map) {
    return MonitorConfig(
      customHeaders: map['customHeaders'] == null ? null : (pulumi.Input.decodeList<MonitorConfigCustomHeadersItem>(map['customHeaders']!, (value) => MonitorConfigCustomHeadersItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      expectedStatusCodeRanges: map['expectedStatusCodeRanges'] == null ? null : (pulumi.Input.decodeList<MonitorConfigExpectedStatusCodeRangesItem>(map['expectedStatusCodeRanges']!, (value) => MonitorConfigExpectedStatusCodeRangesItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
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

