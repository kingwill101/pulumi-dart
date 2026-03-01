// ignore_for_file: unused_element, unnecessary_cast


class DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard {
  /// Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  final String copyPaste;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard].
  /// [copyPaste] Enables or disables clipboard copy-paste functionality through the QEMU guest agent.
  DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourceQemuvdAgentClipBoard(
      copyPaste: map['copyPaste'] as String,
    );
  }
}

