// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_rng_backend_egd_source_qemuvd_agent_clip_board.dart';
import 'domain_devices_rng_backend_egd_source_qemuvd_agent_mouse.dart';

class DomainDevicesRngBackendEgdSourceQemuvdAgent {
  /// Configures clipboard sharing settings for the QEMU guest agent.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceQemuvdAgentClipBoard>?
  clipBoard;

  /// Configures mouse settings for the QEMU guest agent in the random number generator setup.
  final pulumi.Input<DomainDevicesRngBackendEgdSourceQemuvdAgentMouse>? mouse;

  /// Creates a new [DomainDevicesRngBackendEgdSourceQemuvdAgent].
  /// [clipBoard] Configures clipboard sharing settings for the QEMU guest agent.
  /// [mouse] Configures mouse settings for the QEMU guest agent in the random number generator setup.
  DomainDevicesRngBackendEgdSourceQemuvdAgent({this.clipBoard, this.mouse});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clipBoard':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesRngBackendEgdSourceQemuvdAgentClipBoard,
            Map<String, dynamic>
          >(clipBoard, (value) => value.toMap()),
      'mouse':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDevicesRngBackendEgdSourceQemuvdAgentMouse,
            Map<String, dynamic>
          >(mouse, (value) => value.toMap()),
    };
  }

  factory DomainDevicesRngBackendEgdSourceQemuvdAgent.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesRngBackendEgdSourceQemuvdAgent(
      clipBoard: (() {
        final guardedValue = map['clipBoard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesRngBackendEgdSourceQemuvdAgentClipBoard.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mouse: (() {
        final guardedValue = map['mouse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDevicesRngBackendEgdSourceQemuvdAgentMouse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
