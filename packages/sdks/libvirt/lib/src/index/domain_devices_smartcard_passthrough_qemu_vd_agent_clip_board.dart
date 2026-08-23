// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSmartcardPassthroughQemuVdAgentClipBoard {
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainDevicesSmartcardPassthroughQemuVdAgentClipBoard].
  /// [copyPaste] Required.
  const DomainDevicesSmartcardPassthroughQemuVdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesSmartcardPassthroughQemuVdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardPassthroughQemuVdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
