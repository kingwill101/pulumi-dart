// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpiceClipBoard {
  /// Determines whether the copy-paste functionality is enabled for the Spice clipboard.
  final pulumi.Input<String> copyPaste;

  /// Creates a new [DomainDevicesGraphicSpiceClipBoard].
  /// [copyPaste] Determines whether the copy-paste functionality is enabled for the Spice clipboard.
  DomainDevicesGraphicSpiceClipBoard({required this.copyPaste});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'copyPaste': copyPaste};
  }

  factory DomainDevicesGraphicSpiceClipBoard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceClipBoard(
      copyPaste: pulumi.Input.fromValue(map['copyPaste'] as String),
    );
  }
}
