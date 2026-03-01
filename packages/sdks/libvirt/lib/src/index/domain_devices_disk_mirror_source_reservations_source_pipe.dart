// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_reservations_source_pipe_sec_label.dart';

class DomainDevicesDiskMirrorSourceReservationsSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final String path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final List<DomainDevicesDiskMirrorSourceReservationsSourcePipeSecLabel>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesDiskMirrorSourceReservationsSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceReservationsSourcePipeSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourcePipe(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceReservationsSourcePipeSecLabel>(map['secLabels'], (value) => DomainDevicesDiskMirrorSourceReservationsSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

