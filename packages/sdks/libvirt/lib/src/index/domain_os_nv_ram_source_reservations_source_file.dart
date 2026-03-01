// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_reservations_source_file_sec_label.dart';

class DomainOsNvRamSourceReservationsSourceFile {
  /// Specifies if data should be appended to the file used as a source.
  final String? append;
  /// Sets the file path for the RNG source in the EGD backend.
  final String path;
  /// Configures security label settings for the file source in the EGD backend.
  final List<DomainOsNvRamSourceReservationsSourceFileSecLabel>? secLabels;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceFile].
  /// [append] Specifies if data should be appended to the file used as a source.
  /// [path] Sets the file path for the RNG source in the EGD backend.
  /// [secLabels] Configures security label settings for the file source in the EGD backend.
  DomainOsNvRamSourceReservationsSourceFile({
    this.append,
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainOsNvRamSourceReservationsSourceFileSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSourceReservationsSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourceFile(
      append: map['append'] == null ? null : map['append'] as String,
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainOsNvRamSourceReservationsSourceFileSecLabel>(map['secLabels'], (value) => DomainOsNvRamSourceReservationsSourceFileSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

