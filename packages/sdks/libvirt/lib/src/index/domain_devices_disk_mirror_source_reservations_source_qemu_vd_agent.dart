// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_reservations_source_qemu_vd_agent_clip_board.dart';
import 'domain_devices_disk_mirror_source_reservations_source_qemu_vd_agent_mouse.dart';

class DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgent {
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgentClipBoard?>? clipBoard;
  final pulumi.Input<DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgentMouse?>? mouse;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceReservationsSourceQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
