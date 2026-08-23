// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_external_source_qemu_vd_agent_clip_board.dart';
import 'domain_devices_tpm_backend_external_source_qemu_vd_agent_mouse.dart';

class DomainDevicesTpmBackendExternalSourceQemuVdAgent {
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceQemuVdAgentClipBoard>? clipBoard;
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceQemuVdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesTpmBackendExternalSourceQemuVdAgent].
  /// [clipBoard] Optional.
  /// [mouse] Optional.
  const DomainDevicesTpmBackendExternalSourceQemuVdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceQemuVdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceQemuVdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesTpmBackendExternalSourceQemuVdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourceQemuVdAgent(
      clipBoard: (() { final guardedValue = map['clipBoard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourceQemuVdAgentClipBoard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mouse: (() { final guardedValue = map['mouse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesTpmBackendExternalSourceQemuVdAgentMouse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
