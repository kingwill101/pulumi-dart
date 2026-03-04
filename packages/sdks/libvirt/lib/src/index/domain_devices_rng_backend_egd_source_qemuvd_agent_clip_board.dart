// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRngBackendEgdSourceQemuvdAgentClipBoard {
  /// Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainDevicesRngBackendEgdSourceQemuvdAgentClipBoard].
  /// [copyPaste] Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  DomainDevicesRngBackendEgdSourceQemuvdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'copyPaste': copyPaste};
  }

  factory DomainDevicesRngBackendEgdSourceQemuvdAgentClipBoard.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesRngBackendEgdSourceQemuvdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
