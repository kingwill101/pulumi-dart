// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_source_reservations_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_disk_source_reservations_source_qemuvd_agent_mouse.dart';

class DomainDevicesDiskSourceReservationsSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final DomainDevicesDiskSourceReservationsSourceQemuvdAgentClipBoard? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final DomainDevicesDiskSourceReservationsSourceQemuvdAgentMouse? mouse;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesDiskSourceReservationsSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?clipBoard == null ? null : clipBoard!.toMap(),
      'mouse': ?mouse == null ? null : mouse!.toMap(),
    };
  }

  factory DomainDevicesDiskSourceReservationsSourceQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSourceQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : DomainDevicesDiskSourceReservationsSourceQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>()),
      mouse: map['mouse'] == null ? null : DomainDevicesDiskSourceReservationsSourceQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>()),
    );
  }
}

