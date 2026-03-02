// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_rng_backend_egd_source_pty_sec_label.dart';

class DomainDevicesRngBackendEgdSourcePty {
  /// Sets the path for the PTY source in the EGD backend.
  final pulumi.Input<String> path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final pulumi.Input<List<DomainDevicesRngBackendEgdSourcePtySecLabel>>? secLabels;

  /// Creates a new [DomainDevicesRngBackendEgdSourcePty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  DomainDevicesRngBackendEgdSourcePty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesRngBackendEgdSourcePtySecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesRngBackendEgdSourcePtySecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesRngBackendEgdSourcePty.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourcePty(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesRngBackendEgdSourcePtySecLabel>(map['secLabels']!, (value) => DomainDevicesRngBackendEgdSourcePtySecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

