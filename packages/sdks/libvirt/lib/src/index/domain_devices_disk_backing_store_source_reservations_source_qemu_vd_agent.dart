// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_reservations_source_qemu_vd_agent_clip_board.dart';
import 'domain_devices_disk_backing_store_source_reservations_source_qemu_vd_agent_mouse.dart';

class DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgent {
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgentClipBoard?>? clipBoard;
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgentMouse?>? mouse;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskBackingStoreSourceReservationsSourceQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
