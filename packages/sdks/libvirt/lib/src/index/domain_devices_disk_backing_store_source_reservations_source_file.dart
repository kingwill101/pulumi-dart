// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_reservations_source_file_sec_label.dart';

class DomainDevicesDiskBackingStoreSourceReservationsSourceFile {
  /// Specifies if data should be appended to the file used as a source.
  final String? append;
  /// Sets the file path for the RNG source in the EGD backend.
  final String path;
  /// Configures security label settings for the file source in the EGD backend.
  final List<DomainDevicesDiskBackingStoreSourceReservationsSourceFileSecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourceFile].
  /// [append] Specifies if data should be appended to the file used as a source.
  /// [path] Sets the file path for the RNG source in the EGD backend.
  /// [secLabels] Configures security label settings for the file source in the EGD backend.
  DomainDevicesDiskBackingStoreSourceReservationsSourceFile({
    this.append,
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskBackingStoreSourceReservationsSourceFileSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourceFile(
      append: map['append'] == null ? null : map['append'] as String,
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskBackingStoreSourceReservationsSourceFileSecLabel>(map['secLabels'], (value) => DomainDevicesDiskBackingStoreSourceReservationsSourceFileSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

