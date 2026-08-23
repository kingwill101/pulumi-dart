// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_reservations_source_pipe_sec_label.dart';

class DomainDevicesDiskBackingStoreSourceReservationsSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final pulumi.Input<List<DomainDevicesDiskBackingStoreSourceReservationsSourcePipeSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  const DomainDevicesDiskBackingStoreSourceReservationsSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskBackingStoreSourceReservationsSourcePipeSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskBackingStoreSourceReservationsSourcePipeSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourcePipe(
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskBackingStoreSourceReservationsSourcePipeSecLabel>(guardedValue, (value) => DomainDevicesDiskBackingStoreSourceReservationsSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
