// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_vhost_user_chardev_dev_sec_label.dart';

class DomainDevicesInterfaceSourceVhostUserChardevDev {
  /// Specifies the path to the device file for the EGD backend.
  final String path;
  /// Configures the security label settings for the device source in the EGD backend.
  final List<DomainDevicesInterfaceSourceVhostUserChardevDevSecLabel>? secLabels;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  DomainDevicesInterfaceSourceVhostUserChardevDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesInterfaceSourceVhostUserChardevDevSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUserChardevDev(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesInterfaceSourceVhostUserChardevDevSecLabel>(map['secLabels'], (value) => DomainDevicesInterfaceSourceVhostUserChardevDevSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

