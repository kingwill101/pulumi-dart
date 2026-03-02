// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_redir_dev_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_redir_dev_source_qemuvd_agent_mouse.dart';

class DomainDevicesRedirDevSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final pulumi.Input<DomainDevicesRedirDevSourceQemuvdAgentClipBoard>? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final pulumi.Input<DomainDevicesRedirDevSourceQemuvdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesRedirDevSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesRedirDevSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceQemuvdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesRedirDevSourceQemuvdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesRedirDevSourceQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevSourceQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : (DomainDevicesRedirDevSourceQemuvdAgentClipBoard.fromMap((map['clipBoard'] as Map).cast<String, dynamic>())).input(),
      mouse: map['mouse'] == null ? null : (DomainDevicesRedirDevSourceQemuvdAgentMouse.fromMap((map['mouse'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

