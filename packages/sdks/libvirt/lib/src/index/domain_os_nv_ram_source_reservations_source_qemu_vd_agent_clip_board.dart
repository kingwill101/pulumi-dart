// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceReservationsSourceQemuVdAgentClipBoard {
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainOsNvRamSourceReservationsSourceQemuVdAgentClipBoard].
  /// [copyPaste] Required.
  const DomainOsNvRamSourceReservationsSourceQemuVdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainOsNvRamSourceReservationsSourceQemuVdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceReservationsSourceQemuVdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
