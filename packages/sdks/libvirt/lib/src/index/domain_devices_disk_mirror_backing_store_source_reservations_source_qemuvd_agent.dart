// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_disk_mirror_backing_store_source_reservations_source_qemuvd_agent_mouse.dart';

class DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgentClipBoard>? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final pulumi.Input<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgentClipBoard.fromMap((map['clipBoard']! as Map).cast<String, dynamic>())).input(),
      mouse: map['mouse'] == null ? null : (DomainDevicesDiskMirrorBackingStoreSourceReservationsSourceQemuvdAgentMouse.fromMap((map['mouse']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

