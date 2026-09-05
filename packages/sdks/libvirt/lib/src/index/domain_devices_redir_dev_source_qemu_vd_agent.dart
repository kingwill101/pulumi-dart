// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_redir_dev_source_qemu_vd_agent_clip_board.dart';
import 'domain_devices_redir_dev_source_qemu_vd_agent_mouse.dart';

class DomainDevicesRedirDevSourceQemuVdAgent {
  final pulumi.Input<DomainDevicesRedirDevSourceQemuVdAgentClipBoard?>? clipBoard;
  final pulumi.Input<DomainDevicesRedirDevSourceQemuVdAgentMouse?>? mouse;

  /// Creates a new [DomainDevicesRedirDevSourceQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesRedirDevSourceQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesRedirDevSourceQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevSourceQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesRedirDevSourceQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesRedirDevSourceQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
