// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_vhost_user_qemu_vd_agent_clip_board.dart';
import 'domain_devices_disk_source_vhost_user_qemu_vd_agent_mouse.dart';

class DomainDevicesDiskSourceVhostUserQemuVdAgent {
  final pulumi.Input<DomainDevicesDiskSourceVhostUserQemuVdAgentClipBoard>? clipBoard;
  final pulumi.Input<DomainDevicesDiskSourceVhostUserQemuVdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesDiskSourceVhostUserQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesDiskSourceVhostUserQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceVhostUserQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskSourceVhostUserQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostUserQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskSourceVhostUserQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskSourceVhostUserQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
