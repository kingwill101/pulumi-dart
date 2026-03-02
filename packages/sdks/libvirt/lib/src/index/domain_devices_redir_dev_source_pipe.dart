// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_redir_dev_source_pipe_sec_label.dart';

class DomainDevicesRedirDevSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final pulumi.Input<List<DomainDevicesRedirDevSourcePipeSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesRedirDevSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesRedirDevSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesRedirDevSourcePipeSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesRedirDevSourcePipeSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesRedirDevSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevSourcePipe(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesRedirDevSourcePipeSecLabel>(map['secLabels'], (value) => DomainDevicesRedirDevSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

