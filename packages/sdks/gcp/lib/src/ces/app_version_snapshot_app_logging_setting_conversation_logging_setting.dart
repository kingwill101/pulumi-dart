// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppLoggingSettingConversationLoggingSetting {
  /// (Output)
  /// Whether to disable conversation logging for the sessions.
  final pulumi.Input<bool?>? disableConversationLogging;
  /// (Output)
  /// Controls the retention window for the conversation.
  /// If not set, the conversation will be retained for 365 days.
  final pulumi.Input<String?>? retentionWindow;

  /// Creates a new [AppVersionSnapshotAppLoggingSettingConversationLoggingSetting].
  /// [disableConversationLogging] (Output)
  /// [retentionWindow] (Output)
  const AppVersionSnapshotAppLoggingSettingConversationLoggingSetting({
    this.disableConversationLogging,
    this.retentionWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableConversationLogging': ?disableConversationLogging,
      'retentionWindow': ?retentionWindow,
    };
  }

  factory AppVersionSnapshotAppLoggingSettingConversationLoggingSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppLoggingSettingConversationLoggingSetting(
      disableConversationLogging: (() { final guardedValue = map['disableConversationLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retentionWindow: (() { final guardedValue = map['retentionWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
