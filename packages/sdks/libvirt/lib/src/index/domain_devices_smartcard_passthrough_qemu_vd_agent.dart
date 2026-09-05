// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_smartcard_passthrough_qemu_vd_agent_clip_board.dart';
import 'domain_devices_smartcard_passthrough_qemu_vd_agent_mouse.dart';

class DomainDevicesSmartcardPassthroughQemuVdAgent {
  final pulumi.Input<DomainDevicesSmartcardPassthroughQemuVdAgentClipBoard?>? clipBoard;
  final pulumi.Input<DomainDevicesSmartcardPassthroughQemuVdAgentMouse?>? mouse;

  /// Creates a new [DomainDevicesSmartcardPassthroughQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesSmartcardPassthroughQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSmartcardPassthroughQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesSmartcardPassthroughQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesSmartcardPassthroughQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardPassthroughQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesSmartcardPassthroughQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesSmartcardPassthroughQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
