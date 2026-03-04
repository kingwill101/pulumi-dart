// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentClipBoard {
  /// Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentClipBoard].
  /// [copyPaste] Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'copyPaste': copyPaste};
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentClipBoard.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourceQemuvdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
