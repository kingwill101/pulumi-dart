// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceVhostUserUnixReconnect {
  /// Enables or disables the automatic reconnection feature for the UNIX domain socket.
  final pulumi.Input<String> enabled;
  /// Sets the timeout duration for reconnections in the UNIX socket settings.
  final pulumi.Input<double>? timeout;

  /// Creates a new [DomainOsNvRamSourceVhostUserUnixReconnect].
  /// [enabled] Enables or disables the automatic reconnection feature for the UNIX domain socket.
  /// [timeout] Sets the timeout duration for reconnections in the UNIX socket settings.
  DomainOsNvRamSourceVhostUserUnixReconnect({
    required this.enabled,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'timeout': ?timeout,
    };
  }

  factory DomainOsNvRamSourceVhostUserUnixReconnect.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUserUnixReconnect(
      enabled: (map['enabled'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as double).input(),
    );
  }
}

