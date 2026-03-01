// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_smartcard_passthrough_qemuvd_agent_clip_board.dart';
import 'domain_devices_smartcard_passthrough_qemuvd_agent_mouse.dart';

class DomainDevicesSmartcardPassthroughQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final DomainDevicesSmartcardPassthroughQemuvdAgentClipBoard? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final DomainDevicesSmartcardPassthroughQemuvdAgentMouse? mouse;

  /// Creates a new [DomainDevicesSmartcardPassthroughQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesSmartcardPassthroughQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?clipBoard == null ? null : clipBoard!.toMap(),
      'mouse': ?mouse == null ? null : mouse!.toMap(),
    };
  }

  factory DomainDevicesSmartcardPassthroughQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardPassthroughQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : DomainDevicesSmartcardPassthroughQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>()),
      mouse: map['mouse'] == null ? null : DomainDevicesSmartcardPassthroughQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>()),
    );
  }
}

