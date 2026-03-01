// ignore_for_file: unused_element, unnecessary_cast


class AppVersionSnapshotAgentBeforeToolCallback {
  /// The description of the app version.
  final String? description;
  /// (Output)
  /// Whether summarization is disabled.
  final bool? disabled;
  /// (Output)
  /// The Python code to execute for the tool.
  final String? pythonCode;

  /// Creates a new [AppVersionSnapshotAgentBeforeToolCallback].
  /// [description] The description of the app version.
  /// [disabled] (Output)
  /// [pythonCode] (Output)
  AppVersionSnapshotAgentBeforeToolCallback({
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

  factory AppVersionSnapshotAgentBeforeToolCallback.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentBeforeToolCallback(
      description: map['description'] == null ? null : map['description'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      pythonCode: map['pythonCode'] == null ? null : map['pythonCode'] as String,
    );
  }
}

