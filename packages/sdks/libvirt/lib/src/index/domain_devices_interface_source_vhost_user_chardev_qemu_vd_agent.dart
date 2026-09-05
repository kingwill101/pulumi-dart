// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_vhost_user_chardev_qemu_vd_agent_clip_board.dart';
import 'domain_devices_interface_source_vhost_user_chardev_qemu_vd_agent_mouse.dart';

class DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgent {
  final pulumi.Input<DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgentClipBoard?>? clipBoard;
  final pulumi.Input<DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgentMouse?>? mouse;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceVhostUserChardevQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
