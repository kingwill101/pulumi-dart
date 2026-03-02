// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_parallel_source_unix_reconnect.dart';
import 'domain_devices_parallel_source_unix_sec_label.dart';

class DomainDevicesParallelSourceUnix {
  /// Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  final pulumi.Input<String>? mode;
  /// Specifies the path to the UNIX domain socket for connection.
  final pulumi.Input<String>? path;
  /// Configures reconnect settings for the UNIX domain socket in the backend.
  final pulumi.Input<DomainDevicesParallelSourceUnixReconnect>? reconnect;
  /// Configures the security label for the UNIX domain socket.
  final pulumi.Input<List<DomainDevicesParallelSourceUnixSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesParallelSourceUnix].
  /// [mode] Sets the mode attribute for the UNIX domain socket in the random number generator backend.
  /// [path] Specifies the path to the UNIX domain socket for connection.
  /// [reconnect] Configures reconnect settings for the UNIX domain socket in the backend.
  /// [secLabels] Configures the security label for the UNIX domain socket.
  DomainDevicesParallelSourceUnix({
    this.mode,
    this.path,
    this.reconnect,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'path': ?path,
      'reconnect': ?pulumi.Input.mapOptionalInputValue<DomainDevicesParallelSourceUnixReconnect, Map<String, dynamic>>(reconnect, (value) => value.toMap()),
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesParallelSourceUnixSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesParallelSourceUnixSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesParallelSourceUnix.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSourceUnix(
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      reconnect: map['reconnect'] == null ? null : (DomainDevicesParallelSourceUnixReconnect.fromMap((map['reconnect'] as Map).cast<String, dynamic>())).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesParallelSourceUnixSecLabel>(map['secLabels'], (value) => DomainDevicesParallelSourceUnixSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

