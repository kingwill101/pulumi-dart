// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_vhost_user_qemu_vd_agent_clip_board.dart';
import 'domain_devices_disk_backing_store_source_vhost_user_qemu_vd_agent_mouse.dart';

class DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgent {
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgentClipBoard?>? clipBoard;
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgentMouse?>? mouse;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
