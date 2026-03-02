// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_tpm_backend_external_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_tpm_backend_external_source_qemuvd_agent_mouse.dart';

class DomainDevicesTpmBackendExternalSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceQemuvdAgentClipBoard>? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final pulumi.Input<DomainDevicesTpmBackendExternalSourceQemuvdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesTpmBackendExternalSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesTpmBackendExternalSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceQemuvdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesTpmBackendExternalSourceQemuvdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesTpmBackendExternalSourceQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendExternalSourceQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : (DomainDevicesTpmBackendExternalSourceQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>())).input(),
      mouse: map['mouse'] == null ? null : (DomainDevicesTpmBackendExternalSourceQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

