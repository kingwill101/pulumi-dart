// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_reservations_source_unix_reconnect.dart';
import 'domain_os_nv_ram_source_reservations_source_unix_sec_label.dart';

class DomainOsNvRamSourceReservationsSourceUnix {
  /// Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  final pulumi.Input<String>? mode;

  /// Specifies the path to the UNIX domain socket for connection.
  final pulumi.Input<String>? path;

  /// Configures reconnect settings for the UNIX domain socket in the backend.
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceUnixReconnect>?
  reconnect;

  /// Configures the security label for the UNIX domain socket.
  final pulumi.Input<List<DomainOsNvRamSourceReservationsSourceUnixSecLabel>>?
  secLabels;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceUnix].
  /// [mode] Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  /// [path] Specifies the path to the UNIX domain socket for connection.
  /// [reconnect] Configures reconnect settings for the UNIX domain socket in the backend.
  /// [secLabels] Configures the security label for the UNIX domain socket.
  DomainOsNvRamSourceReservationsSourceUnix({
    this.mode,
    this.path,
    this.reconnect,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'path': ?path,
      'reconnect':
          ?pulumi.Input.mapOptionalInputValue<
            DomainOsNvRamSourceReservationsSourceUnixReconnect,
            Map<String, dynamic>
          >(reconnect, (value) => value.toMap()),
      'secLabels':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainOsNvRamSourceReservationsSourceUnixSecLabel>,
            List<Map<String, dynamic>>
          >(
            secLabels,
            (value) =>
                pulumi.Input.encodeList<
                  DomainOsNvRamSourceReservationsSourceUnixSecLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainOsNvRamSourceReservationsSourceUnix.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainOsNvRamSourceReservationsSourceUnix(
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reconnect: (() {
        final guardedValue = map['reconnect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainOsNvRamSourceReservationsSourceUnixReconnect.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secLabels: (() {
        final guardedValue = map['secLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            DomainOsNvRamSourceReservationsSourceUnixSecLabel
          >(
            guardedValue,
            (value) =>
                DomainOsNvRamSourceReservationsSourceUnixSecLabel.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
