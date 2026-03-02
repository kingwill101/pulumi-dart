// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_vhost_user_qemuvd_agent_clip_board.dart';
import 'domain_devices_disk_backing_store_source_vhost_user_qemuvd_agent_mouse.dart';

class DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgentClipBoard>? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : (DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>())).input(),
      mouse: map['mouse'] == null ? null : (DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

