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
  const TcpCheck({
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
      pingConfig: (() { final guardedValue = map['pingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
