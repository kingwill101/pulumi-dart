// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_vhost_user_chardev_pipe_sec_label.dart';

class DomainDevicesInterfaceSourceVhostUserChardevPipe {
  /// Sets the path for the pipe source in the EGD backend.
  final pulumi.Input<String> path;

  /// Configures security label settings for the pipe source in the EGD backend.
  final pulumi.Input<
    List<DomainDevicesInterfaceSourceVhostUserChardevPipeSecLabel>
  >?
  secLabels;

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
      'secLabels':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainDevicesInterfaceSourceVhostUserChardevPipeSecLabel>,
            List<Map<String, dynamic>>
          >(
            secLabels,
            (value) =>
                pulumi.Input.encodeList<
                  DomainDevicesInterfaceSourceVhostUserChardevPipeSecLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevPipe.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesInterfaceSourceVhostUserChardevPipe(
      path: pulumi.Input.fromValue(map['path'] as String),
      secLabels: (() {
        final guardedValue = map['secLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            DomainDevicesInterfaceSourceVhostUserChardevPipeSecLabel
          >(
            guardedValue,
            (value) =>
                DomainDevicesInterfaceSourceVhostUserChardevPipeSecLabel.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
