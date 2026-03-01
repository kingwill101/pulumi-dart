// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgentClipBoard {
  /// Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  final String copyPaste;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgentClipBoard].
  /// [copyPaste] Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceVhostUserQemuvdAgentClipBoard(
      copyPaste: map['copyPaste'] as String,
    );
  }
}

