// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_vhost_user_chardev_qemuvd_agent_clip_board.dart';
import 'domain_devices_interface_source_vhost_user_chardev_qemuvd_agent_mouse.dart';

class DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final pulumi.Input<DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgentClipBoard>? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final pulumi.Input<DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : (DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgentClipBoard.fromMap((map['clipBoard']! as Map).cast<String, dynamic>())).input(),
      mouse: map['mouse'] == null ? null : (DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgentMouse.fromMap((map['mouse']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

