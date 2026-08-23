// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_serial_source_qemu_vd_agent_clip_board.dart';
import 'domain_devices_serial_source_qemu_vd_agent_mouse.dart';

class DomainDevicesSerialSourceQemuVdAgent {
  final pulumi.Input<DomainDevicesSerialSourceQemuVdAgentClipBoard>? clipBoard;
  final pulumi.Input<DomainDevicesSerialSourceQemuVdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesSerialSourceQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesSerialSourceQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSerialSourceQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSerialSourceQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesSerialSourceQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialSourceQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesSerialSourceQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesSerialSourceQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
