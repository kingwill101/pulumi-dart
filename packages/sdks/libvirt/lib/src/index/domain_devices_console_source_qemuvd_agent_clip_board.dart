// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesConsoleSourceQemuvdAgentClipBoard {
  /// Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  final String copyPaste;

  /// Creates a new [DomainDevicesConsoleSourceQemuvdAgentClipBoard].
  /// [copyPaste] Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  DomainDevicesConsoleSourceQemuvdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesConsoleSourceQemuvdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleSourceQemuvdAgentClipBoard(
      copyPaste: map['copyPaste'] as String,
    );
  }
}

