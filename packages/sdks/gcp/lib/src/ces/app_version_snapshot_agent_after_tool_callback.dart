// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAgentAfterToolCallback {
  /// The description of the app version.
  final pulumi.Input<String?>? description;
  /// (Output)
  /// Whether summarization is disabled.
  final pulumi.Input<bool?>? disabled;
  /// (Output)
  /// If enabled, the callback will also be executed on intermediate model
  /// outputs. This setting only affects after model callback.
  /// **ENABLE WITH CAUTION**. Typically after model callback only needs to be
  /// executed after receiving all model responses. Enabling proactive execution
  /// may have negative implication on the execution cost and latency, and
  /// should only be enabled in rare situations.
  final pulumi.Input<bool?>? proactiveExecutionEnabled;
  /// (Output)
  /// The Python code to execute for the tool.
  final pulumi.Input<String?>? pythonCode;

  /// Creates a new [AppVersionSnapshotAgentAfterToolCallback].
  /// [description] The description of the app version.
  /// [disabled] (Output)
  /// [proactiveExecutionEnabled] (Output)
  /// [pythonCode] (Output)
  const AppVersionSnapshotAgentAfterToolCallback({
    this.description,
    this.disabled,
    this.proactiveExecutionEnabled,
    this.pythonCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'proactiveExecutionEnabled': ?proactiveExecutionEnabled,
      'pythonCode': ?pythonCode,
    };
  }

  factory AppVersionSnapshotAgentAfterToolCallback.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentAfterToolCallback(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      proactiveExecutionEnabled: (() { final guardedValue = map['proactiveExecutionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pythonCode: (() { final guardedValue = map['pythonCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
