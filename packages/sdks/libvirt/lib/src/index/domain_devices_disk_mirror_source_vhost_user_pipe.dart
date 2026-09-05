// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_vhost_user_pipe_sec_label.dart';

class DomainDevicesDiskMirrorSourceVhostUserPipe {
  /// Sets the path for the pipe source in the EGD backend.
  final pulumi.Input<String> path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final pulumi.Input<List<DomainDevicesDiskMirrorSourceVhostUserPipeSecLabel>?>? secLabels;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserPipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  const DomainDevicesDiskMirrorSourceVhostUserPipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorSourceVhostUserPipeSecLabel>, List<Map<String, dynamic>>>(secLabels, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceVhostUserPipeSecLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserPipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserPipe(
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() { final guardedValue = map['secLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceVhostUserPipeSecLabel>(guardedValue, (value) => DomainDevicesDiskMirrorSourceVhostUserPipeSecLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
