// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceVhostUserQemuVdAgentClipBoard {
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainDevicesDiskSourceVhostUserQemuVdAgentClipBoard].
  /// [copyPaste] Required.
  const DomainDevicesDiskSourceVhostUserQemuVdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesDiskSourceVhostUserQemuVdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceVhostUserQemuVdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
