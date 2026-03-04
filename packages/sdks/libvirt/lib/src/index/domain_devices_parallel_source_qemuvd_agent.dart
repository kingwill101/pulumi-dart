// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_parallel_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_parallel_source_qemuvd_agent_mouse.dart';

class DomainDevicesParallelSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final pulumi.Input<DomainDevicesParallelSourceQemuvdAgentClipBoard>?
  clipBoard;

  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final pulumi.Input<DomainDevicesParallelSourceQemuvdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesParallelSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesParallelSourceQemuvdAgent({this.clipBoard, this.mouse});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourceQemuvdAgentClipBoard,
            Map<String, dynamic>
          >(clipBoard, (value) => value.toMap()),
      'mouse':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesParallelSourceQemuvdAgentMouse,
            Map<String, dynamic>
          >(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesParallelSourceQemuvdAgent.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesParallelSourceQemuvdAgent(
      clipBoard: (() {
        final guardedValue = map['clipBoard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourceQemuvdAgentClipBoard.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mouse: (() {
        final guardedValue = map['mouse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesParallelSourceQemuvdAgentMouse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
