// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAgentBeforeAgentCallback {
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// (Output)
  /// Whether summarization is disabled.
  final pulumi.Input<bool>? disabled;
  /// (Output)
  /// The Python code to execute for the tool.
  final pulumi.Input<String>? pythonCode;

  /// Creates a new [AppVersionSnapshotAgentBeforeAgentCallback].
  /// [description] The description of the app version.
  /// [disabled] (Output)
  /// [pythonCode] (Output)
  const AppVersionSnapshotAgentBeforeAgentCallback({
    this.description,
    this.disabled,
    this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'pythonCode': ?pythonCode,
    };
  }

  factory AppVersionSnapshotAgentBeforeAgentCallback.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentBeforeAgentCallback(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pythonCode: (() { final guardedValue = map['pythonCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
