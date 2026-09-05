// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_vhost_user_unix_reconnect.dart';
import 'domain_os_nv_ram_source_vhost_user_unix_sec_label.dart';

class DomainOsNvRamSourceVhostUserUnix {
  /// Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  final pulumi.Input<String?>? mode;
  /// Specifies the path to the UNIX domain socket for connection.
  final pulumi.Input<String?>? path;
  /// Configures reconnect settings for the UNIX domain socket in the backend.
  final pulumi.Input<DomainOsNvRamSourceVhostUserUnixReconnect?>? reconnect;
  /// Configures the security label for the UNIX domain socket.
  final pulumi.Input<List<DomainOsNvRamSourceVhostUserUnixSecLabel>?>? secLabels;

  /// Creates a new [DomainOsNvRamSourceVhostUserUnix].
  /// [mode] Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  /// [path] Specifies the path to the UNIX domain socket for connection.
  /// [reconnect] Configures reconnect settings for the UNIX domain socket in the backend.
  /// [secLabels] Configures the security label for the UNIX domain socket.
  const DomainOsNvRamSourceVhostUserUnix({
    this.mode,
    this.path,
    this.reconnect,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'path': ?path,
      'reconnect': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserUnixReconnect, Map<String, dynamic>>(reconnect, (value) => value.toMap()),
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainOsNvRamSourceVhostUserUnixSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainOsNvRamSourceVhostUserUnixSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainOsNvRamSourceVhostUserUnix.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUserUnix(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reconnect: (() { final guardedValue = map['reconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserUnixReconnect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainOsNvRamSourceVhostUserUnixSecLabel>(guardedValue, (value) => DomainOsNvRamSourceVhostUserUnixSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
