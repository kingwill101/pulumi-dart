// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_backing_store_source_reservations_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_disk_backing_store_source_reservations_source_qemuvd_agent_mouse.dart';

class DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentClipBoard? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentMouse? mouse;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?clipBoard == null ? null : clipBoard!.toMap(),
      'mouse': ?mouse == null ? null : mouse!.toMap(),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>()),
      mouse: map['mouse'] == null ? null : DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>()),
    );
  }
}

