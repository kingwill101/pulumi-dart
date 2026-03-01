// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgentClipBoard {
  /// Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  final String copyPaste;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgentClipBoard].
  /// [copyPaste] Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceVhostUserQemuvdAgentClipBoard(
      copyPaste: map['copyPaste'] as String,
    );
  }
}

