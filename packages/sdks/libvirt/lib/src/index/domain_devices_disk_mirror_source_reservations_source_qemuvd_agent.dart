// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_source_reservations_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_disk_mirror_source_reservations_source_qemuvd_agent_mouse.dart';

class DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgentClipBoard? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgentMouse? mouse;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?clipBoard == null ? null : clipBoard!.toMap(),
      'mouse': ?mouse == null ? null : mouse!.toMap(),
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>()),
      mouse: map['mouse'] == null ? null : DomainDevicesDiskMirrorSourceReservationsSourceQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>()),
    );
  }
}

