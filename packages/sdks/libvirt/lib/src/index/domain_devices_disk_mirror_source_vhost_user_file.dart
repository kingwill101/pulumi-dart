// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_vhost_user_file_sec_label.dart';

class DomainDevicesDiskMirrorSourceVhostUserFile {
  /// Specifies if data should be appended to the file used as a source.
  final String? append;
  /// Sets the file path for the RNG source in the EGD backend.
  final String path;
  /// Configures security label settings for the file source in the EGD backend.
  final List<DomainDevicesDiskMirrorSourceVhostUserFileSecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserFile].
  /// [append] Specifies if data should be appended to the file used as a source.
  /// [path] Sets the file path for the RNG source in the EGD backend.
  /// [secLabels] Configures security label settings for the file source in the EGD backend.
  DomainDevicesDiskMirrorSourceVhostUserFile({
    this.append,
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceVhostUserFileSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserFile(
      append: map['append'] == null ? null : map['append'] as String,
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceVhostUserFileSecLabel>(map['secLabels'], (value) => DomainDevicesDiskMirrorSourceVhostUserFileSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

