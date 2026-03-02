// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesTpmBackendExternalSourceUnixReconnect {
  /// Enables or disables the automatic reconnection feature for the UNIX domain socket.
  final pulumi.Input<String> enabled;
  /// Sets the timeout duration for reconnections in the UNIX socket settings.
  final pulumi.Input<double>? timeout;

  /// Creates a new [DomainDevicesTpmBackendExternalSourceUnixReconnect].
  /// [enabled] Enables or disables the automatic reconnection feature for the UNIX domain socket.
  /// [timeout] Sets the timeout duration for reconnections in the UNIX socket settings.
  DomainDevicesTpmBackendExternalSourceUnixReconnect({
    required this.enabled,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'timeout': ?timeout,
    };
  }

  factory DomainDevicesTpmBackendExternalSourceUnixReconnect.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourceUnixReconnect(
      enabled: (map['enabled'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as double).input(),
    );
  }
}

