// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_serial_source_unix_reconnect.dart';
import 'domain_devices_serial_source_unix_sec_label.dart';

class DomainDevicesSerialSourceUnix {
  /// Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  final String? mode;
  /// Specifies the path to the UNIX domain socket for connection.
  final String? path;
  /// Configures reconnect settings for the UNIX domain socket in the backend.
  final DomainDevicesSerialSourceUnixReconnect? reconnect;
  /// Configures the security label for the UNIX domain socket.
  final List<DomainDevicesSerialSourceUnixSecLabel>? secLabels;

  /// Creates a new [DomainDevicesSerialSourceUnix].
  /// [mode] Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  /// [path] Specifies the path to the UNIX domain socket for connection.
  /// [reconnect] Configures reconnect settings for the UNIX domain socket in the backend.
  /// [secLabels] Configures the security label for the UNIX domain socket.
  DomainDevicesSerialSourceUnix({
    this.mode,
    this.path,
    this.reconnect,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'path': ?path,
      'reconnect': ?reconnect == null ? null : reconnect!.toMap(),
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesSerialSourceUnixSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesSerialSourceUnix.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialSourceUnix(
      mode: map['mode'] == null ? null : map['mode'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      reconnect: map['reconnect'] == null ? null : DomainDevicesSerialSourceUnixReconnect.fromMap((map['reconnect'] as Map).cast<String, dynamic>()),
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesSerialSourceUnixSecLabel>(map['secLabels'], (value) => DomainDevicesSerialSourceUnixSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

