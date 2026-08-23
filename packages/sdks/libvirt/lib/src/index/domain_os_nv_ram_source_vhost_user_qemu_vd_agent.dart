// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_vhost_user_qemu_vd_agent_clip_board.dart';
import 'domain_os_nv_ram_source_vhost_user_qemu_vd_agent_mouse.dart';

class DomainOsNvRamSourceVhostUserQemuVdAgent {
  final pulumi.Input<DomainOsNvRamSourceVhostUserQemuVdAgentClipBoard>? clipBoard;
  final pulumi.Input<DomainOsNvRamSourceVhostUserQemuVdAgentMouse>? mouse;

  /// Creates a new [DomainOsNvRamSourceVhostUserQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainOsNvRamSourceVhostUserQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceVhostUserQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSourceVhostUserQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUserQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceVhostUserQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
