// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_vhost_user_pty_sec_label.dart';

class DomainDevicesDiskMirrorBackingStoreSourceVhostUserPty {
  /// Sets the path for the PTY source in the EGD backend.
  final String path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final List<DomainDevicesDiskMirrorBackingStoreSourceVhostUserPtySecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceVhostUserPty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  DomainDevicesDiskMirrorBackingStoreSourceVhostUserPty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceVhostUserPtySecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceVhostUserPty.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceVhostUserPty(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceVhostUserPtySecLabel>(map['secLabels'], (value) => DomainDevicesDiskMirrorBackingStoreSourceVhostUserPtySecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

