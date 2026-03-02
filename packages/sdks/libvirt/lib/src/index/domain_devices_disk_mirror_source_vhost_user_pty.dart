// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_vhost_user_pty_sec_label.dart';

class DomainDevicesDiskMirrorSourceVhostUserPty {
  /// Sets the path for the PTY source in the EGD backend.
  final pulumi.Input<String> path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final pulumi.Input<List<DomainDevicesDiskMirrorSourceVhostUserPtySecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserPty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  DomainDevicesDiskMirrorSourceVhostUserPty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorSourceVhostUserPtySecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceVhostUserPtySecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserPty.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserPty(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceVhostUserPtySecLabel>(map['secLabels'], (value) => DomainDevicesDiskMirrorSourceVhostUserPtySecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

