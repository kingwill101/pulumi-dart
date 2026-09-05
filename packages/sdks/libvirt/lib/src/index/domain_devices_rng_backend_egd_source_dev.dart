// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_rng_backend_egd_source_dev_sec_label.dart';

class DomainDevicesRngBackendEgdSourceDev {
  /// Specifies the path to the device file for the EGD backend.
  final pulumi.Input<String> path;
  /// Configures the security label settings for the device source in the EGD backend.
  final pulumi.Input<List<DomainDevicesRngBackendEgdSourceDevSecLabel>?>? secLabels;

  /// Creates a new [DomainDevicesRngBackendEgdSourceDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  const DomainDevicesRngBackendEgdSourceDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesRngBackendEgdSourceDevSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesRngBackendEgdSourceDevSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesRngBackendEgdSourceDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourceDev(
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesRngBackendEgdSourceDevSecLabel>(guardedValue, (value) => DomainDevicesRngBackendEgdSourceDevSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
