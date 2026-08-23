// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSmartcardPassthroughQemuVdAgentMouse {
  final pulumi.Input<String> mode;

  /// Creates a new [DomainDevicesSmartcardPassthroughQemuVdAgentMouse].
  /// [mode] Required.
  const DomainDevicesSmartcardPassthroughQemuVdAgentMouse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesSmartcardPassthroughQemuVdAgentMouse.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardPassthroughQemuVdAgentMouse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
