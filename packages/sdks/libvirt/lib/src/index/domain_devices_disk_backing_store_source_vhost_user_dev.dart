// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_vhost_user_dev_sec_label.dart';

class DomainDevicesDiskBackingStoreSourceVhostUserDev {
  /// Specifies the path to the device file for the EGD backend.
  final String path;
  /// Configures the security label settings for the device source in the EGD backend.
  final List<DomainDevicesDiskBackingStoreSourceVhostUserDevSecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceVhostUserDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  DomainDevicesDiskBackingStoreSourceVhostUserDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskBackingStoreSourceVhostUserDevSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceVhostUserDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceVhostUserDev(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskBackingStoreSourceVhostUserDevSecLabel>(map['secLabels'], (value) => DomainDevicesDiskBackingStoreSourceVhostUserDevSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

