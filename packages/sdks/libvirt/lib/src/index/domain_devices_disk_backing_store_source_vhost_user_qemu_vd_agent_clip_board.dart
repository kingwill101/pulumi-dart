// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgentClipBoard {
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgentClipBoard].
  /// [copyPaste] Required.
  const DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceVhostUserQemuVdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
