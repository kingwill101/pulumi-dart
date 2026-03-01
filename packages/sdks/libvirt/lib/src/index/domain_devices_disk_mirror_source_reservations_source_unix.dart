// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_reservations_source_unix_reconnect.dart';
import 'domain_devices_disk_mirror_source_reservations_source_unix_sec_label.dart';

class DomainDevicesDiskMirrorSourceReservationsSourceUnix {
  /// Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  final String? mode;
  /// Specifies the path to the UNIX domain socket for connection.
  final String? path;
  /// Configures reconnect settings for the UNIX domain socket in the backend.
  final DomainDevicesDiskMirrorSourceReservationsSourceUnixReconnect? reconnect;
  /// Configures the security label for the UNIX domain socket.
  final List<DomainDevicesDiskMirrorSourceReservationsSourceUnixSecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourceUnix].
  /// [mode] Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  /// [path] Specifies the path to the UNIX domain socket for connection.
  /// [reconnect] Configures reconnect settings for the UNIX domain socket in the backend.
  /// [secLabels] Configures the security label for the UNIX domain socket.
  DomainDevicesDiskMirrorSourceReservationsSourceUnix({
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
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceReservationsSourceUnixSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSourceUnix.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourceUnix(
      mode: map['mode'] == null ? null : map['mode'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      reconnect: map['reconnect'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceUnixReconnect.fromMap((map['reconnect'] as Map).cast<String, dynamic>()),
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceReservationsSourceUnixSecLabel>(map['secLabels'], (value) => DomainDevicesDiskMirrorSourceReservationsSourceUnixSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

