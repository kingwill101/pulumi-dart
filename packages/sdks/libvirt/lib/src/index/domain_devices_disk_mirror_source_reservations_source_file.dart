// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_reservations_source_file_sec_label.dart';

class DomainDevicesDiskMirrorSourceReservationsSourceFile {
  /// Specifies if data should be appended to the file used as a source.
  final pulumi.Input<String>? append;
  /// Sets the file path for the RNG source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the file source in the EGD backend.
  final pulumi.Input<List<DomainDevicesDiskMirrorSourceReservationsSourceFileSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourceFile].
  /// [append] Specifies if data should be appended to the file used as a source.
  /// [path] Sets the file path for the RNG source in the EGD backend.
  /// [secLabels] Configures security label settings for the file source in the EGD backend.
  DomainDevicesDiskMirrorSourceReservationsSourceFile({
    this.append,
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorSourceReservationsSourceFileSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceReservationsSourceFileSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourceFile(
      append: map['append'] == null ? null : (map['append']! as String).input(),
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceReservationsSourceFileSecLabel>(map['secLabels']!, (value) => DomainDevicesDiskMirrorSourceReservationsSourceFileSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

