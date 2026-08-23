// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_rng_backend_egd_source_qemu_vd_agent_clip_board.dart';
import 'domain_devices_rng_backend_egd_source_qemu_vd_agent_mouse.dart';

class DomainDevicesRngBackendEgdSourceQemuVdAgent {
  final pulumi.Input<DomainDevicesRngBackendEgdSourceQemuVdAgentClipBoard>? clipBoard;
  final pulumi.Input<DomainDevicesRngBackendEgdSourceQemuVdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesRngBackendEgdSourceQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesRngBackendEgdSourceQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRngBackendEgdSourceQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesRngBackendEgdSourceQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourceQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesRngBackendEgdSourceQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesRngBackendEgdSourceQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
