// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceVhostUserQemuvdAgentClipBoard {
  /// Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  final String copyPaste;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserQemuvdAgentClipBoard].
  /// [copyPaste] Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  DomainDevicesDiskMirrorSourceVhostUserQemuvdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserQemuvdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserQemuvdAgentClipBoard(
      copyPaste: map['copyPaste'] as String,
    );
  }
}

