// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_vhost_user_qemu_vd_agent_clip_board.dart';
import 'domain_devices_disk_mirror_backing_store_source_vhost_user_qemu_vd_agent_mouse.dart';

class DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuVdAgent {
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuVdAgentClipBoard>? clipBoard;
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuVdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
