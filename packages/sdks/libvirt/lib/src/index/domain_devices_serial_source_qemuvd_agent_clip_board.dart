// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSerialSourceQemuvdAgentClipBoard {
  /// Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  final String copyPaste;

  /// Creates a new [DomainDevicesSerialSourceQemuvdAgentClipBoard].
  /// [copyPaste] Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  DomainDevicesSerialSourceQemuvdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesSerialSourceQemuvdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialSourceQemuvdAgentClipBoard(
      copyPaste: map['copyPaste'] as String,
    );
  }
}

