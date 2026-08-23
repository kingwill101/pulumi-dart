// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesChannelSourceQemuVdAgentClipBoard {
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainDevicesChannelSourceQemuVdAgentClipBoard].
  /// [copyPaste] Required.
  const DomainDevicesChannelSourceQemuVdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesChannelSourceQemuVdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelSourceQemuVdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
