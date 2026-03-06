// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_probe_match.dart';

class GetApplicationGatewayProbe {
  /// The Hostname used for this Probe.
  final pulumi.Input<String> host;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The Interval between two consecutive probes in seconds.
  final pulumi.Input<int> interval;
  /// A `match` block as defined above.
  final pulumi.Input<List<GetApplicationGatewayProbeMatch>> matches;
  /// The minimum number of servers that are always marked as healthy.
  final pulumi.Input<int> minimumServers;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// The URL path to rewrite.
  final pulumi.Input<String> path;
  /// Whether the host header is picked from the backend HTTP settings.
  final pulumi.Input<bool> pickHostNameFromBackendHttpSettings;
  /// Custom port which is used for probing the backend servers.
  final pulumi.Input<int> port;
  /// The Protocol used for this Probe.
  final pulumi.Input<String> protocol;
  /// The Timeout used for this Probe, indicating when a probe becomes unhealthy.
  final pulumi.Input<int> timeout;
  /// The Unhealthy Threshold for this Probe, which indicates the amount of retries which will be attempted before a node is deemed unhealthy.
  final pulumi.Input<int> unhealthyThreshold;

  /// Creates a new [GetApplicationGatewayProbe].
  /// [host] The Hostname used for this Probe.
  /// [id] The ID of the Rewrite Rule Set
  /// [interval] The Interval between two consecutive probes in seconds.
  /// [matches] A `match` block as defined above.
  /// [minimumServers] The minimum number of servers that are always marked as healthy.
  /// [name] The name of this Application Gateway.
  /// [path] The URL path to rewrite.
  /// [pickHostNameFromBackendHttpSettings] Whether the host header is picked from the backend HTTP settings.
  /// [port] Custom port which is used for probing the backend servers.
  /// [protocol] The Protocol used for this Probe.
  /// [timeout] The Timeout used for this Probe, indicating when a probe becomes unhealthy.
  /// [unhealthyThreshold] The Unhealthy Threshold for this Probe, which indicates the amount of retries which will be attempted before a node is deemed unhealthy.
  const GetApplicationGatewayProbe({
    required this.host,
    required this.id,
    required this.interval,
    required this.matches,
    required this.minimumServers,
    required this.name,
    required this.path,
    required this.pickHostNameFromBackendHttpSettings,
    required this.port,
    required this.protocol,
    required this.timeout,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'id': id,
      'interval': interval,
      'matches': pulumi.Input.mapInputValue<List<GetApplicationGatewayProbeMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetApplicationGatewayProbeMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minimumServers': minimumServers,
      'name': name,
      'path': path,
      'pickHostNameFromBackendHttpSettings': pickHostNameFromBackendHttpSettings,
      'port': port,
      'protocol': protocol,
      'timeout': timeout,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory GetApplicationGatewayProbe.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayProbe(
      host: pulumi.Input.fromValue(map['host'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationGatewayProbeMatch>(map['matches']!, (value) => GetApplicationGatewayProbeMatch.fromMap((value as Map).cast<String, dynamic>()))),
      minimumServers: pulumi.Input.fromValue(map['minimumServers'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      pickHostNameFromBackendHttpSettings: pulumi.Input.fromValue(map['pickHostNameFromBackendHttpSettings'] as bool),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
      unhealthyThreshold: pulumi.Input.fromValue(map['unhealthyThreshold'] as int),
    );
  }
}

