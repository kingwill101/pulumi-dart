// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesParallelSourceQemuVdAgentClipBoard {
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainDevicesParallelSourceQemuVdAgentClipBoard].
  /// [copyPaste] Required.
  const DomainDevicesParallelSourceQemuVdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesParallelSourceQemuVdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelSourceQemuVdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
