// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesConsoleSourceQemuVdAgentClipBoard {
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainDevicesConsoleSourceQemuVdAgentClipBoard].
  /// [copyPaste] Required.
  const DomainDevicesConsoleSourceQemuVdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesConsoleSourceQemuVdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleSourceQemuVdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
