// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_reservations_source_pipe_sec_label.dart';

class DomainDevicesDiskSourceReservationsSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final String path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final List<DomainDevicesDiskSourceReservationsSourcePipeSecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesDiskSourceReservationsSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskSourceReservationsSourcePipeSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskSourceReservationsSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSourcePipe(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskSourceReservationsSourcePipeSecLabel>(map['secLabels'], (value) => DomainDevicesDiskSourceReservationsSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

