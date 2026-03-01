// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_parallel_source_pty_sec_label.dart';

class DomainDevicesParallelSourcePty {
  /// Sets the path for the PTY source in the EGD backend.
  final String path;
  /// This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  final List<DomainDevicesParallelSourcePtySecLabel>? secLabels;

  /// Creates a new [DomainDevicesParallelSourcePty].
  /// [path] Sets the path for the PTY source in the EGD backend.
  /// [secLabels] This field configures the security label for the Pseudo TTY device, enabling security controls over access.
  DomainDevicesParallelSourcePty({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesParallelSourcePtySecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesParallelSourcePty.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSourcePty(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesParallelSourcePtySecLabel>(map['secLabels'], (value) => DomainDevicesParallelSourcePtySecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

