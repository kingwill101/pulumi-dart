// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceVhostUserQemuVdAgentClipBoard {
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainOsNvRamSourceVhostUserQemuVdAgentClipBoard].
  /// [copyPaste] Required.
  const DomainOsNvRamSourceVhostUserQemuVdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainOsNvRamSourceVhostUserQemuVdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceVhostUserQemuVdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
