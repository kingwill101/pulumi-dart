// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentClipBoard {
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentClipBoard].
  /// [copyPaste] Required.
  const DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceVhostUserQemuVdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
