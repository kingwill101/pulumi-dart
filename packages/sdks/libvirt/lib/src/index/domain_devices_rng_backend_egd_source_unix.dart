// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_rng_backend_egd_source_unix_reconnect.dart';
import 'domain_devices_rng_backend_egd_source_unix_sec_label.dart';

class DomainDevicesRngBackendEgdSourceUnix {
  /// Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  final pulumi.Input<String>? mode;
  /// Specifies the path to the UNIX domain socket for connection.
  final pulumi.Input<String>? path;
  /// Configures reconnect settings for the UNIX domain socket in the backend.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceUnixReconnect>? reconnect;
  /// Configures the security label for the UNIX domain socket.
  final pulumi.Input<List<DomainDevicesRngBackendEgdSourceUnixSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesRngBackendEgdSourceUnix].
  /// [mode] Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  /// [path] Specifies the path to the UNIX domain socket for connection.
  /// [reconnect] Configures reconnect settings for the UNIX domain socket in the backend.
  /// [secLabels] Configures the security label for the UNIX domain socket.
  DomainDevicesRngBackendEgdSourceUnix({
    this.mode,
    this.path,
    this.reconnect,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'path': ?path,
      'reconnect': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceUnixReconnect, Map<String, dynamic>>(reconnect, (value) => value.toMap()),
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesRngBackendEgdSourceUnixSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesRngBackendEgdSourceUnixSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesRngBackendEgdSourceUnix.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourceUnix(
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      reconnect: map['reconnect'] == null ? null : (DomainDevicesRngBackendEgdSourceUnixReconnect.fromMap((map['reconnect'] as Map).cast<String, dynamic>())).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesRngBackendEgdSourceUnixSecLabel>(map['secLabels'], (value) => DomainDevicesRngBackendEgdSourceUnixSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

