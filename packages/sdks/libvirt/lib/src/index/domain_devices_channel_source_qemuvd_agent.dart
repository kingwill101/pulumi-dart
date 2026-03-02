// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_channel_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_channel_source_qemuvd_agent_mouse.dart';

class DomainDevicesChannelSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final pulumi.Input<DomainDevicesChannelSourceQemuvdAgentClipBoard>? clipBoard;
  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final pulumi.Input<DomainDevicesChannelSourceQemuvdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesChannelSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesChannelSourceQemuvdAgent({
    this.clipBoard,
    this.mouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourceQemuvdAgentClipBoard, Map<String, dynamic>>(clipBoard, (value) => value.toMap()),
      'mouse': ?pulumi.Input.mapOptionalInputValue<DomainDevicesChannelSourceQemuvdAgentMouse, Map<String, dynamic>>(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesChannelSourceQemuvdAgent.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelSourceQemuvdAgent(
      clipBoard: map['clipBoard'] == null ? null : (DomainDevicesChannelSourceQemuvdAgentClipBoard.fromMap((map['clipBoard']! as Map).cast<String, dynamic>())).input(),
      mouse: map['mouse'] == null ? null : (DomainDevicesChannelSourceQemuvdAgentMouse.fromMap((map['mouse']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

