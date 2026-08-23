// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_vhost_user_dev_sec_label.dart';

class DomainDevicesDiskMirrorBackingStoreSourceVhostUserDev {
  /// Specifies the path to the device file for the EGD backend.
  final pulumi.Input<String> path;
  /// Configures the security label settings for the device source in the EGD backend.
  final pulumi.Input<List<DomainDevicesDiskMirrorBackingStoreSourceVhostUserDevSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceVhostUserDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  const DomainDevicesDiskMirrorBackingStoreSourceVhostUserDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorBackingStoreSourceVhostUserDevSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceVhostUserDevSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceVhostUserDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceVhostUserDev(
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceVhostUserDevSecLabel>(guardedValue, (value) => DomainDevicesDiskMirrorBackingStoreSourceVhostUserDevSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
