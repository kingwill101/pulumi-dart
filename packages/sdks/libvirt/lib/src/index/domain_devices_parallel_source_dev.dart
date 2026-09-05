// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_parallel_source_dev_sec_label.dart';

class DomainDevicesParallelSourceDev {
  /// Specifies the path to the device file for the EGD backend.
  final pulumi.Input<String> path;
  /// Configures the security label settings for the device source in the EGD backend.
  final pulumi.Input<List<DomainDevicesParallelSourceDevSecLabel>?>? secLabels;

  /// Creates a new [DomainDevicesParallelSourceDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  const DomainDevicesParallelSourceDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesParallelSourceDevSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesParallelSourceDevSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesParallelSourceDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSourceDev(
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesParallelSourceDevSecLabel>(guardedValue, (value) => DomainDevicesParallelSourceDevSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
