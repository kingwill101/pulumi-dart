// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_vhost_user_qemuvd_agent_clip_board.dart';
import 'domain_os_nv_ram_source_vhost_user_qemuvd_agent_mouse.dart';

class DomainOsNvRamSourceVhostUserQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final pulumi.Input<DomainOsNvRamSourceVhostUserQemuvdAgentClipBoard>? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final pulumi.Input<DomainOsNvRamSourceVhostUserQemuvdAgentMouse>? mouse;

  /// Creates a new [DomainOsNvRamSourceVhostUserQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainOsNvRamSourceVhostUserQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserQemuvdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserQemuvdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSourceVhostUserQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUserQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : (DomainOsNvRamSourceVhostUserQemuvdAgentClipBoard.fromMap((map['clipBoard']! as Map).cast<String, dynamic>())).input(),
      mouse: map['mouse'] == null ? null : (DomainOsNvRamSourceVhostUserQemuvdAgentMouse.fromMap((map['mouse']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

