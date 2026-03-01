// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_serial_source_pipe_sec_label.dart';

class DomainDevicesSerialSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final String path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final List<DomainDevicesSerialSourcePipeSecLabel>? secLabels;

  /// Creates a new [DomainDevicesSerialSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesSerialSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesSerialSourcePipeSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesSerialSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialSourcePipe(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesSerialSourcePipeSecLabel>(map['secLabels'], (value) => DomainDevicesSerialSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

