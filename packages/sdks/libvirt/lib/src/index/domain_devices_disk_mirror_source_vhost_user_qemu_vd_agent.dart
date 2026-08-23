// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_vhost_user_qemu_vd_agent_clip_board.dart';
import 'domain_devices_disk_mirror_source_vhost_user_qemu_vd_agent_mouse.dart';

class DomainDevicesDiskMirrorSourceVhostUserQemuVdAgent {
  final pulumi.Input<DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentClipBoard>? clipBoard;
  final pulumi.Input<DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesDiskMirrorSourceVhostUserQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
