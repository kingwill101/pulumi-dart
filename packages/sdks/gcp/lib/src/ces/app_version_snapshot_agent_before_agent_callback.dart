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
  AppVersionSnapshotAgentBeforeAgentCallback({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      pythonCode: map['pythonCode'] == null ? null : (map['pythonCode']! as String).input(),
    );
  }
}

