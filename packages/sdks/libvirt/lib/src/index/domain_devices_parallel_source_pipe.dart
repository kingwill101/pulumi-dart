// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_parallel_source_pipe_sec_label.dart';

class DomainDevicesParallelSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final pulumi.Input<List<DomainDevicesParallelSourcePipeSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesParallelSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesParallelSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesParallelSourcePipeSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesParallelSourcePipeSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesParallelSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSourcePipe(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesParallelSourcePipeSecLabel>(map['secLabels']!, (value) => DomainDevicesParallelSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

