// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ping_config_response.dart';

/// Information required for a TCP Uptime check request.
class TcpCheckResponse {
  /// Contains information needed to add pings to a TCP check.
  final pulumi.Input<PingConfigResponse> pingConfig;

  /// The TCP port on the server against which to run the check. Will be combined with host (specified within the monitored_resource) to construct the full URL. Required.
  final pulumi.Input<int> port;

  /// Creates a new [TcpCheckResponse].
  /// [pingConfig] Contains information needed to add pings to a TCP check.
  /// [port] The TCP port on the server against which to run the check. Will be combined with host (specified within the monitored_resource) to construct the full URL. Required.
  TcpCheckResponse({required this.pingConfig, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pingConfig':
          pulumi.Input.mapInputValue<PingConfigResponse, Map<String, dynamic>>(
            pingConfig,
            (value) => value.toMap(),
          ),
      'port': port,
    };
  }

  factory TcpCheckResponse.fromMap(Map<String, dynamic> map) {
    return TcpCheckResponse(
      pingConfig: pulumi.Input.fromValue(
        PingConfigResponse.fromMap(
          (map['pingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
