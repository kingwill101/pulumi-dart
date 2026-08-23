// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_smartcard_passthrough_dev_sec_label.dart';

class DomainDevicesSmartcardPassthroughDev {
  /// Specifies the path to the device file for the EGD backend.
  final pulumi.Input<String> path;
  /// Configures the security label settings for the device source in the EGD backend.
  final pulumi.Input<List<DomainDevicesSmartcardPassthroughDevSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesSmartcardPassthroughDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  const DomainDevicesSmartcardPassthroughDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesSmartcardPassthroughDevSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesSmartcardPassthroughDevSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesSmartcardPassthroughDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardPassthroughDev(
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesSmartcardPassthroughDevSecLabel>(guardedValue, (value) => DomainDevicesSmartcardPassthroughDevSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
