// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_redir_dev_source_dev_sec_label.dart';

class DomainDevicesRedirDevSourceDev {
  /// Specifies the path to the device file for the EGD backend.
  final pulumi.Input<String> path;
  /// Configures the security label settings for the device source in the EGD backend.
  final pulumi.Input<List<DomainDevicesRedirDevSourceDevSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesRedirDevSourceDev].
  /// [path] Specifies the path to the device file for the EGD backend.
  /// [secLabels] Configures the security label settings for the device source in the EGD backend.
  DomainDevicesRedirDevSourceDev({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesRedirDevSourceDevSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesRedirDevSourceDevSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesRedirDevSourceDev.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevSourceDev(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesRedirDevSourceDevSecLabel>(map['secLabels']!, (value) => DomainDevicesRedirDevSourceDevSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

