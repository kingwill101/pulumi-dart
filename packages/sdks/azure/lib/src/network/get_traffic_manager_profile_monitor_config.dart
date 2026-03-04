// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_traffic_manager_profile_monitor_config_custom_header.dart';

class GetTrafficManagerProfileMonitorConfig {
  /// One or more `custom_header` blocks as defined below.
  final pulumi.Input<List<GetTrafficManagerProfileMonitorConfigCustomHeader>>
  customHeaders;

  /// A list of status code ranges.
  final pulumi.Input<List<String>> expectedStatusCodeRanges;

  /// The interval used to check the endpoint health from a Traffic Manager probing agent.
  final pulumi.Input<int> intervalInSeconds;

  /// The path used by the monitoring checks.
  final pulumi.Input<String> path;

  /// The port number used by the monitoring checks.
  final pulumi.Input<int> port;

  /// The protocol used by the monitoring checks.
  final pulumi.Input<String> protocol;

  /// The amount of time the Traffic Manager probing agent should wait before considering that check a failure when a health check probe is sent to the endpoint.
  final pulumi.Input<int> timeoutInSeconds;

  /// The number of failures a Traffic Manager probing agent tolerates before marking that endpoint as unhealthy.
  final pulumi.Input<int> toleratedNumberOfFailures;

  /// Creates a new [GetTrafficManagerProfileMonitorConfig].
  /// [customHeaders] One or more `custom_header` blocks as defined below.
  /// [expectedStatusCodeRanges] A list of status code ranges.
  /// [intervalInSeconds] The interval used to check the endpoint health from a Traffic Manager probing agent.
  /// [path] The path used by the monitoring checks.
  /// [port] The port number used by the monitoring checks.
  /// [protocol] The protocol used by the monitoring checks.
  /// [timeoutInSeconds] The amount of time the Traffic Manager probing agent should wait before considering that check a failure when a health check probe is sent to the endpoint.
  /// [toleratedNumberOfFailures] The number of failures a Traffic Manager probing agent tolerates before marking that endpoint as unhealthy.
  GetTrafficManagerProfileMonitorConfig({
    required this.customHeaders,
    required this.expectedStatusCodeRanges,
    required this.intervalInSeconds,
    required this.path,
    required this.port,
    required this.protocol,
    required this.timeoutInSeconds,
    required this.toleratedNumberOfFailures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHeaders':
          pulumi.Input.mapInputValue<
            List<GetTrafficManagerProfileMonitorConfigCustomHeader>,
            List<Map<String, dynamic>>
          >(
            customHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  GetTrafficManagerProfileMonitorConfigCustomHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'expectedStatusCodeRanges': expectedStatusCodeRanges,
      'intervalInSeconds': intervalInSeconds,
      'path': path,
      'port': port,
      'protocol': protocol,
      'timeoutInSeconds': timeoutInSeconds,
      'toleratedNumberOfFailures': toleratedNumberOfFailures,
    };
  }

  factory GetTrafficManagerProfileMonitorConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTrafficManagerProfileMonitorConfig(
      customHeaders: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetTrafficManagerProfileMonitorConfigCustomHeader
        >(
          map['customHeaders']!,
          (value) => GetTrafficManagerProfileMonitorConfigCustomHeader.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      expectedStatusCodeRanges: pulumi.Input.fromValue(
        (map['expectedStatusCodeRanges'] as List).cast<String>(),
      ),
      intervalInSeconds: pulumi.Input.fromValue(
        map['intervalInSeconds'] as int,
      ),
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      timeoutInSeconds: pulumi.Input.fromValue(map['timeoutInSeconds'] as int),
      toleratedNumberOfFailures: pulumi.Input.fromValue(
        map['toleratedNumberOfFailures'] as int,
      ),
    );
  }
}
