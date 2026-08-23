// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_vhost_user_pty_sec_label.dart';

class DomainDevicesDiskSourceVhostUserPty {
  /// Sets the path for the PTY source in the EGD backend.
  final pulumi.Input<String> path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final pulumi.Input<List<DomainDevicesDiskSourceVhostUserPtySecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskSourceVhostUserPty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  const DomainDevicesDiskSourceVhostUserPty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskSourceVhostUserPtySecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskSourceVhostUserPtySecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskSourceVhostUserPty.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostUserPty(
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskSourceVhostUserPtySecLabel>(guardedValue, (value) => DomainDevicesDiskSourceVhostUserPtySecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
