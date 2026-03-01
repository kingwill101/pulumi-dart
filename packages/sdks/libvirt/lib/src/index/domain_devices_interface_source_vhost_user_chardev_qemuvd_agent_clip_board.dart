// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgentClipBoard {
  /// Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  final String copyPaste;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgentClipBoard].
  /// [copyPaste] Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUserChardevQemuvdAgentClipBoard(
      copyPaste: map['copyPaste'] as String,
    );
  }
}

