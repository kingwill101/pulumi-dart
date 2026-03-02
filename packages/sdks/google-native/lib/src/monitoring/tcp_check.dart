// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ping_config.dart';

/// Information required for a TCP Uptime check request.
class TcpCheck {
  /// Contains information needed to add pings to a TCP check.
  final pulumi.Input<PingConfig>? pingConfig;
  /// The TCP port on the server against which to run the check. Will be combined with host (specified within the monitored_resource) to construct the full URL. Required.
  final pulumi.Input<int>? port;

  /// Creates a new [TcpCheck].
  /// [pingConfig] Contains information needed to add pings to a TCP check.
  /// [port] The TCP port on the server against which to run the check. Will be combined with host (specified within the monitored_resource) to construct the full URL. Required.
  TcpCheck({
    this.pingConfig,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pingConfig': ?pulumi.Input.mapOptionalInputValue<PingConfig, Map<String, dynamic>>(pingConfig, (value) => value.toMap()),
      'port': ?port,
    };
  }

  factory TcpCheck.fromMap(Map<String, dynamic> map) {
    return TcpCheck(
      pingConfig: map['pingConfig'] == null ? null : (PingConfig.fromMap((map['pingConfig']! as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
    );
  }
}

