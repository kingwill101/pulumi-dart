// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_probe_match.dart';

class ApplicationGatewayProbe {
  /// The hostname used for this Probe. If the Application Gateway is configured for a single site, by default the hostname should be specified as `127.0.0.1`, unless otherwise configured in custom Probe.
  ///
  /// &gt; **Note:** Exactly one of `host` or `pickHostNameFromBackendHttpSettings` must be set when `protocol` is `Http` or `Https`. Neither can be set when `protocol` is `Tcp` or `Tls`.
  final pulumi.Input<String?>? host;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String?>? id;
  /// The interval between two consecutive probes in seconds. Possible values range from `1` to `86400`.
  final pulumi.Input<int> interval;
  /// A `match` block as defined above.
  ///
  /// &gt; **Note:** `match` cannot be set when `protocol` is set to `Tcp` or `Tls`.
  final pulumi.Input<ApplicationGatewayProbeMatch?>? match;
  /// The minimum number of servers that are always marked as healthy. Defaults to `0`.
  final pulumi.Input<int?>? minimumServers;
  /// The name of the Probe.
  final pulumi.Input<String> name;
  /// The relative URL path of the Probe. Valid value starts with `/`.
  ///
  /// &gt; **Note:** `path` cannot be set when `protocol` is set to `Tcp` or `Tls`. `path` must be specified when `protocol` is `Http` or `Https`.
  final pulumi.Input<String?>? path;
  /// Whether the host header should be picked from the backend HTTP settings. Defaults to `false`.
  ///
  /// &gt; **Note:** `pickHostNameFromBackendHttpSettings` cannot be set when `protocol` is set to `Tcp` or `Tls`.
  final pulumi.Input<bool?>? pickHostNameFromBackendHttpSettings;
  /// Custom port which will be used for probing the backend servers. Possible values range from `1` to `65535`.
  ///
  /// &gt; **Note:** In case `port` is not set, the port from the backend settings will be used. This property is valid for `Basic`, `Standard_v2`, and `WAF_v2` SKUs only.
  final pulumi.Input<int?>? port;
  /// The protocol used for this Probe. Possible values are `Http`, `Https`, `Tcp`, and `Tls`.
  final pulumi.Input<String> protocol;
  /// Whether the proxy protocol header is enabled for this Probe. Defaults to `false`.
  ///
  /// &gt; **Note:** `proxyProtocolHeaderEnabled` can only be set when `protocol` is `Tcp` or `Tls`.
  final pulumi.Input<bool?>? proxyProtocolHeaderEnabled;
  /// The timeout in seconds used for this Probe, which indicates when a Probe becomes unhealthy. Possible values range from `1` to `86400`.
  ///
  /// &gt; **Note:** The `timeout` value should not be greater than the `interval` value.
  final pulumi.Input<int> timeout;
  /// The unhealthy threshold for this Probe, which indicates the amount of retries which should be attempted before a node is deemed unhealthy. Possible values range from `1` to `20`.
  final pulumi.Input<int> unhealthyThreshold;

  /// Creates a new [ApplicationGatewayProbe].
  /// [host] The hostname used for this Probe. If the Application Gateway is configured for a single site, by default the hostname should be specified as `127.0.0.1`, unless otherwise configured in custom Probe.
  /// [id] The ID of the Rewrite Rule Set
  /// [interval] The interval between two consecutive probes in seconds. Possible values range from `1` to `86400`.
  /// [match] A `match` block as defined above.
  /// [minimumServers] The minimum number of servers that are always marked as healthy. Defaults to `0`.
  /// [name] The name of the Probe.
  /// [path] The relative URL path of the Probe. Valid value starts with `/`.
  /// [pickHostNameFromBackendHttpSettings] Whether the host header should be picked from the backend HTTP settings. Defaults to `false`.
  /// [port] Custom port which will be used for probing the backend servers. Possible values range from `1` to `65535`.
  /// [protocol] The protocol used for this Probe. Possible values are `Http`, `Https`, `Tcp`, and `Tls`.
  /// [proxyProtocolHeaderEnabled] Whether the proxy protocol header is enabled for this Probe. Defaults to `false`.
  /// [timeout] The timeout in seconds used for this Probe, which indicates when a Probe becomes unhealthy. Possible values range from `1` to `86400`.
  /// [unhealthyThreshold] The unhealthy threshold for this Probe, which indicates the amount of retries which should be attempted before a node is deemed unhealthy. Possible values range from `1` to `20`.
  const ApplicationGatewayProbe({
    this.host,
    this.id,
    required this.interval,
    this.match,
    this.minimumServers,
    required this.name,
    this.path,
    this.pickHostNameFromBackendHttpSettings,
    this.port,
    required this.protocol,
    this.proxyProtocolHeaderEnabled,
    required this.timeout,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'id': ?id,
      'interval': interval,
      'match': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayProbeMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'minimumServers': ?minimumServers,
      'name': name,
      'path': ?path,
      'pickHostNameFromBackendHttpSettings': ?pickHostNameFromBackendHttpSettings,
      'port': ?port,
      'protocol': protocol,
      'proxyProtocolHeaderEnabled': ?proxyProtocolHeaderEnabled,
      'timeout': timeout,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory ApplicationGatewayProbe.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayProbe(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: pulumi.Input.fromValue((map['interval'] as num).toInt()),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayProbeMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minimumServers: (() { final guardedValue = map['minimumServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pickHostNameFromBackendHttpSettings: (() { final guardedValue = map['pickHostNameFromBackendHttpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      proxyProtocolHeaderEnabled: (() { final guardedValue = map['proxyProtocolHeaderEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeout: pulumi.Input.fromValue((map['timeout'] as num).toInt()),
      unhealthyThreshold: pulumi.Input.fromValue((map['unhealthyThreshold'] as num).toInt()),
    );
  }
}
