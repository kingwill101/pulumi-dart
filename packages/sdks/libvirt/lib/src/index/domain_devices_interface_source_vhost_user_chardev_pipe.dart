// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_vhost_user_chardev_pipe_sec_label.dart';

class DomainDevicesInterfaceSourceVhostUserChardevPipe {
  /// Sets the path for the pipe source in the EGD backend.
  final String path;
  /// Configures security label settings for the pipe source in the EGD backend.
  final List<DomainDevicesInterfaceSourceVhostUserChardevPipeSecLabel>? secLabels;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevPipe].
  /// [path] Sets the path for the pipe source in the EGD backend.
  /// [secLabels] Configures security label settings for the pipe source in the EGD backend.
  DomainDevicesInterfaceSourceVhostUserChardevPipe({
    required this.path,
    this.secLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'secLabels': ?secLabels == null ? null : pulumi.Input.encodeList<DomainDevicesInterfaceSourceVhostUserChardevPipeSecLabel, Map<String, dynamic>>(secLabels!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevPipe.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUserChardevPipe(
      path: map['path'] as String,
      secLabels: map['secLabels'] == null ? null : pulumi.Input.decodeList<DomainDevicesInterfaceSourceVhostUserChardevPipeSecLabel>(map['secLabels'], (value) => DomainDevicesInterfaceSourceVhostUserChardevPipeSecLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

