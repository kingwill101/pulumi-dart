// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_reservations_source_qemu_vd_agent_clip_board.dart';
import 'domain_os_nv_ram_source_reservations_source_qemu_vd_agent_mouse.dart';

class DomainOsNvRamSourceReservationsSourceQemuVdAgent {
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceQemuVdAgentClipBoard?>? clipBoard;
  final pulumi.Input<DomainOsNvRamSourceReservationsSourceQemuVdAgentMouse?>? mouse;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainOsNvRamSourceReservationsSourceQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourceQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceReservationsSourceQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainOsNvRamSourceReservationsSourceQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourceQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceReservationsSourceQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainOsNvRamSourceReservationsSourceQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
