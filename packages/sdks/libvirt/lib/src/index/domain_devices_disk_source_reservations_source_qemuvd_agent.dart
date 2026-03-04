// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_reservations_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_disk_source_reservations_source_qemuvd_agent_mouse.dart';

class DomainDevicesDiskSourceReservationsSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final pulumi.Input<
    DomainDevicesDiskSourceReservationsSourceQemuvdAgentClipBoard
  >?
  clipBoard;

  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final pulumi.Input<DomainDevicesDiskSourceReservationsSourceQemuvdAgentMouse>?
  mouse;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesDiskSourceReservationsSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskSourceReservationsSourceQemuvdAgentClipBoard,
            Map<String, dynamic>
          >(clipBoard, (value) => value.toMap()),
      'mouse':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesDiskSourceReservationsSourceQemuvdAgentMouse,
            Map<String, dynamic>
          >(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskSourceReservationsSourceQemuvdAgent.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskSourceReservationsSourceQemuvdAgent(
      clipBoard: (() {
        final guardedValue = map['clipBoard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskSourceReservationsSourceQemuvdAgentClipBoard.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mouse: (() {
        final guardedValue = map['mouse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesDiskSourceReservationsSourceQemuvdAgentMouse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
