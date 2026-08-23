// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRngBackendEgdSourceQemuVdAgentClipBoard {
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainDevicesRngBackendEgdSourceQemuVdAgentClipBoard].
  /// [copyPaste] Required.
  const DomainDevicesRngBackendEgdSourceQemuVdAgentClipBoard({
    required this.copyPaste,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyPaste': copyPaste,
    };
  }

  factory DomainDevicesRngBackendEgdSourceQemuVdAgentClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgdSourceQemuVdAgentClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
