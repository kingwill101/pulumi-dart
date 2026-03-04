// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A non-fatal problem encountered during the execution of the build.
class WarningResponse {
  /// The priority for this warning.
  final pulumi.Input<String> priority;

  /// Explanation of the warning generated.
  final pulumi.Input<String> text;

  /// Creates a new [WarningResponse].
  /// [priority] The priority for this warning.
  /// [text] Explanation of the warning generated.
  WarningResponse({required this.priority, required this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'priority': priority, 'text': text};
  }

  factory WarningResponse.fromMap(Map<String, dynamic> map) {
    return WarningResponse(
      priority: pulumi.Input.fromValue(map['priority'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
