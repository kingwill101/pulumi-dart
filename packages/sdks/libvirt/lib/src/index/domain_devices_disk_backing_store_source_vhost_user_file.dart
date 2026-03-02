// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_vhost_user_file_sec_label.dart';

class DomainDevicesDiskBackingStoreSourceVhostUserFile {
  /// Specifies if data should be appended to the file used as a source.
  final pulumi.Input<String>? append;
  /// Sets the file path for the RNG source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the file source in the EGD backend.
  final pulumi.Input<List<DomainDevicesDiskBackingStoreSourceVhostUserFileSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceVhostUserFile].
  /// [append] Specifies if data should be appended to the file used as a source.
  /// [path] Sets the file path for the RNG source in the EGD backend.
  /// [secLabels] Configures security label settings for the file source in the EGD backend.
  DomainDevicesDiskBackingStoreSourceVhostUserFile({
    this.append,
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskBackingStoreSourceVhostUserFileSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskBackingStoreSourceVhostUserFileSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceVhostUserFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceVhostUserFile(
      append: map['append'] == null ? null : (map['append']! as String).input(),
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskBackingStoreSourceVhostUserFileSecLabel>(map['secLabels']!, (value) => DomainDevicesDiskBackingStoreSourceVhostUserFileSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

