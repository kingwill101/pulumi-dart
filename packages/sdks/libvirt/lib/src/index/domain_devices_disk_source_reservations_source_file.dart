// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_reservations_source_file_sec_label.dart';

class DomainDevicesDiskSourceReservationsSourceFile {
  /// Specifies if data should be appended to the file used as a source.
  final pulumi.Input<String>? append;
  /// Sets the file path for the RNG source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the file source in the EGD backend.
  final pulumi.Input<List<DomainDevicesDiskSourceReservationsSourceFileSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourceFile].
  /// [append] Specifies if data should be appended to the file used as a source.
  /// [path] Sets the file path for the RNG source in the EGD backend.
  /// [secLabels] Configures security label settings for the file source in the EGD backend.
  DomainDevicesDiskSourceReservationsSourceFile({
    this.append,
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskSourceReservationsSourceFileSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskSourceReservationsSourceFileSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskSourceReservationsSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSourceFile(
      append: map['append'] == null ? null : (map['append']! as String).input(),
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskSourceReservationsSourceFileSecLabel>(map['secLabels']!, (value) => DomainDevicesDiskSourceReservationsSourceFileSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

