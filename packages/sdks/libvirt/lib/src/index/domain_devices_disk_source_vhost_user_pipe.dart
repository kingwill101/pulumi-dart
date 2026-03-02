// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_vhost_user_pipe_sec_label.dart';

class DomainDevicesDiskSourceVhostUserPipe {
  /// Sets the path for the pipe source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final pulumi.Input<List<DomainDevicesDiskSourceVhostUserPipeSecLabel>>? secLabels;

  /// Creates a new [DomainDevicesDiskSourceVhostUserPipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesDiskSourceVhostUserPipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskSourceVhostUserPipeSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskSourceVhostUserPipeSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskSourceVhostUserPipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostUserPipe(
      path: (map['path'] as String).input(),
      secLabels: map['secLabels'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskSourceVhostUserPipeSecLabel>(map['secLabels']!, (value) => DomainDevicesDiskSourceVhostUserPipeSecLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

