// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_rng_backend_egd_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_rng_backend_egd_source_qemuvd_agent_mouse.dart';

class DomainDevicesRngBackendEgdSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final DomainDevicesRngBackendEgdSourceQemuvdAgentClipBoard? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final DomainDevicesRngBackendEgdSourceQemuvdAgentMouse? mouse;

  /// Creates a new [DomainDevicesRngBackendEgdSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesRngBackendEgdSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?clipBoard == null ? null : clipBoard!.toMap(),
      'mouse': ?mouse == null ? null : mouse!.toMap(),
    };
  }

  factory DomainDevicesRngBackendEgdSourceQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourceQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : DomainDevicesRngBackendEgdSourceQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>()),
      mouse: map['mouse'] == null ? null : DomainDevicesRngBackendEgdSourceQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>()),
    );
  }
}

