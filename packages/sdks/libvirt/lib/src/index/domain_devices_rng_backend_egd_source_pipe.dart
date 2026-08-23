// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_rng_backend_egd_source_pipe_sec_label.dart';

class DomainDevicesRngBackendEgdSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final pulumi.Input<List<DomainDevicesRngBackendEgdSourcePipeSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesRngBackendEgdSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  const DomainDevicesRngBackendEgdSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesRngBackendEgdSourcePipeSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesRngBackendEgdSourcePipeSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesRngBackendEgdSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourcePipe(
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesRngBackendEgdSourcePipeSecLabel>(guardedValue, (value) => DomainDevicesRngBackendEgdSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
