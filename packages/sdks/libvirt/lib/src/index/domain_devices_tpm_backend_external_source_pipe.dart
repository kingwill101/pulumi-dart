// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_external_source_pipe_sec_label.dart';

class DomainDevicesTpmBackendExternalSourcePipe {
  /// Sets the path for the pipe source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final pulumi.Input<List<DomainDevicesTpmBackendExternalSourcePipeSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesTpmBackendExternalSourcePipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesTpmBackendExternalSourcePipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesTpmBackendExternalSourcePipeSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesTpmBackendExternalSourcePipeSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesTpmBackendExternalSourcePipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourcePipe(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesTpmBackendExternalSourcePipeSecLabel>(map['secLabels']!, (value) => DomainDevicesTpmBackendExternalSourcePipeSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

