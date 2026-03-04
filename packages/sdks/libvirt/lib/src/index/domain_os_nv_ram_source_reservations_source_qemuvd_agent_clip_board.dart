// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard {
  /// Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard].
  /// [copyPaste] Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'copyPaste': copyPaste};
  }

  factory DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
