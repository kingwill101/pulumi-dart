// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_vhost_user_chardev_file_sec_label.dart';

class DomainDevicesInterfaceSourceVhostUserChardevFile {
  /// Specifies if data should be appended to the file used as a source.
  final String? append;
  /// Sets the file path for the RNG source in the EGD backend.
  final String path;
  /// Configures security label settings for the file source in the EGD backend.
  final List<DomainDevicesInterfaceSourceVhostUserChardevFileSecLabel>? secLabels;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevFile].
  /// [append] Specifies if data should be appended to the file used as a source.
  /// [path] Sets the file path for the RNG source in the EGD backend.
  /// [secLabels] Configures security label settings for the file source in the EGD backend.
  DomainDevicesInterfaceSourceVhostUserChardevFile({
    this.append,
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesInterfaceSourceVhostUserChardevFileSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUserChardevFile(
      append: map['append'] == null ? null : map['append'] as String,
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesInterfaceSourceVhostUserChardevFileSecLabel>(map['secLabels'], (value) => DomainDevicesInterfaceSourceVhostUserChardevFileSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

