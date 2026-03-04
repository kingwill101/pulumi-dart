// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_reservations_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_disk_backing_store_source_reservations_source_qemuvd_agent_mouse.dart';

class DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final pulumi.Input<
    DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentClipBoard
  >?
  clipBoard;

  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final pulumi.Input<
    DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentMouse
  >?
  mouse;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentClipBoard,
            Map<String, dynamic>
          >(clipBoard, (value) => value.toMap()),
      'mouse':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentMouse,
            Map<String, dynamic>
          >(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgent.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgent(
      clipBoard: (() {
        final guardedValue = map['clipBoard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentClipBoard.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mouse: (() {
        final guardedValue = map['mouse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentMouse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
