// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_console_source_qemu_vd_agent_clip_board.dart';
import 'domain_devices_console_source_qemu_vd_agent_mouse.dart';

class DomainDevicesConsoleSourceQemuVdAgent {
  final pulumi.Input<DomainDevicesConsoleSourceQemuVdAgentClipBoard>? clipBoard;
  final pulumi.Input<DomainDevicesConsoleSourceQemuVdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesConsoleSourceQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesConsoleSourceQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesConsoleSourceQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesConsoleSourceQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleSourceQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourceQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesConsoleSourceQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
