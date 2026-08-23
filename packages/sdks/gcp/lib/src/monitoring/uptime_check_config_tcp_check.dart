// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uptime_check_config_tcp_check_ping_config.dart';

class UptimeCheckConfigTcpCheck {
  /// Contains information needed to add pings to a TCP check.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigTcpCheckPingConfig>? pingConfig;
  /// The port to the page to run the check against. Will be combined with host (specified within the `monitoredResource`) to construct the full URL.
  final pulumi.Input<int> port;

  /// Creates a new [UptimeCheckConfigTcpCheck].
  /// [pingConfig] Contains information needed to add pings to a TCP check.
  /// [port] The port to the page to run the check against. Will be combined with host (specified within the `monitoredResource`) to construct the full URL.
  const UptimeCheckConfigTcpCheck({
    this.pingConfig,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pingConfig': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigTcpCheckPingConfig, Map<String, dynamic>>(pingConfig, (value) => value.toMap()),
      'port': port,
    };
  }

  factory UptimeCheckConfigTcpCheck.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigTcpCheck(
      pingConfig: (() { final guardedValue = map['pingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UptimeCheckConfigTcpCheckPingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
