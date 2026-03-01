// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_reservations_source_pipe_sec_label.dart';

class DomainOsNvRamSourceReservationsSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final String path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final List<DomainOsNvRamSourceReservationsSourcePipeSecLabel>? secLabels;

  /// Creates a new [DomainOsNvRamSourceReservationsSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainOsNvRamSourceReservationsSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainOsNvRamSourceReservationsSourcePipeSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSourceReservationsSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourcePipe(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainOsNvRamSourceReservationsSourcePipeSecLabel>(map['secLabels'], (value) => DomainOsNvRamSourceReservationsSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

