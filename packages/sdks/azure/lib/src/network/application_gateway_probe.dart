// ignore_for_file: unused_element, unnecessary_cast

import 'application_gateway_probe_match.dart';

class ApplicationGatewayProbe {
  /// The Hostname used for this Probe. If the Application Gateway is configured for a single site, by default the Host name should be specified as `127.0.0.1`, unless otherwise configured in custom probe. Cannot be set if `pick_host_name_from_backend_http_settings` is set to `true`.
  final String? host;
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// The Interval between two consecutive probes in seconds. Possible values range from 1 second to a maximum of 86,400 seconds.
  final int interval;
  /// A `match` block as defined above.
  final ApplicationGatewayProbeMatch? match;
  /// The minimum number of servers that are always marked as healthy. Defaults to `0`.
  final int? minimumServers;
  /// The Name of the Probe.
  final String name;
  /// The Path used for this Probe.
  final String path;
  /// Whether the host header should be picked from the backend HTTP settings. Defaults to `false`.
  final bool? pickHostNameFromBackendHttpSettings;
  /// Custom port which will be used for probing the backend servers. The valid value ranges from 1 to 65535. In case not set, port from HTTP settings will be used. This property is valid for Basic, Standard_v2 and WAF_v2 only.
  final int? port;
  /// The Protocol used for this Probe. Possible values are `Http` and `Https`.
  final String protocol;
  /// The Timeout used for this Probe, which indicates when a probe becomes unhealthy. Possible values range from 1 second to a maximum of 86,400 seconds.
  final int timeout;
  /// The Unhealthy Threshold for this Probe, which indicates the amount of retries which should be attempted before a node is deemed unhealthy. Possible values are from 1 to 20.
  final int unhealthyThreshold;

  /// Creates a new [ApplicationGatewayProbe].
  /// [host] The Hostname used for this Probe. If the Application Gateway is configured for a single site, by default the Host name should be specified as `127.0.0.1`, unless otherwise configured in custom probe. Cannot be set if `pick_host_name_from_backend_http_settings` is set to `true`.
  /// [id] The ID of the Rewrite Rule Set
  /// [interval] The Interval between two consecutive probes in seconds. Possible values range from 1 second to a maximum of 86,400 seconds.
  /// [match] A `match` block as defined above.
  /// [minimumServers] The minimum number of servers that are always marked as healthy. Defaults to `0`.
  /// [name] The Name of the Probe.
  /// [path] The Path used for this Probe.
  /// [pickHostNameFromBackendHttpSettings] Whether the host header should be picked from the backend HTTP settings. Defaults to `false`.
  /// [port] Custom port which will be used for probing the backend servers. The valid value ranges from 1 to 65535. In case not set, port from HTTP settings will be used. This property is valid for Basic, Standard_v2 and WAF_v2 only.
  /// [protocol] The Protocol used for this Probe. Possible values are `Http` and `Https`.
  /// [timeout] The Timeout used for this Probe, which indicates when a probe becomes unhealthy. Possible values range from 1 second to a maximum of 86,400 seconds.
  /// [unhealthyThreshold] The Unhealthy Threshold for this Probe, which indicates the amount of retries which should be attempted before a node is deemed unhealthy. Possible values are from 1 to 20.
  ApplicationGatewayProbe({
    this.host,
    this.id,
    required this.interval,
    this.match,
    this.minimumServers,
    required this.name,
    required this.path,
    this.pickHostNameFromBackendHttpSettings,
    this.port,
    required this.protocol,
    required this.timeout,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'id': ?id,
      'interval': interval,
      'match': ?match == null ? null : match!.toMap(),
      'minimumServers': ?minimumServers,
      'name': name,
      'path': path,
      'pickHostNameFromBackendHttpSettings': ?pickHostNameFromBackendHttpSettings,
      'port': ?port,
      'protocol': protocol,
      'timeout': timeout,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory ApplicationGatewayProbe.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayProbe(
      host: map['host'] == null ? null : map['host'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      interval: map['interval'] as int,
      match: map['match'] == null ? null : ApplicationGatewayProbeMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
      minimumServers: map['minimumServers'] == null ? null : map['minimumServers'] as int,
      name: map['name'] as String,
      path: map['path'] as String,
      pickHostNameFromBackendHttpSettings: map['pickHostNameFromBackendHttpSettings'] == null ? null : map['pickHostNameFromBackendHttpSettings'] as bool,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] as String,
      timeout: map['timeout'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}

