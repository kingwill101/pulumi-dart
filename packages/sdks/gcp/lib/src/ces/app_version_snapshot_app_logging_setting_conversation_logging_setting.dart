// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppLoggingSettingConversationLoggingSetting {
  /// (Output)
  /// Whether to disable conversation logging for the sessions.
  final pulumi.Input<bool>? disableConversationLogging;

  /// Creates a new [AppVersionSnapshotAppLoggingSettingConversationLoggingSetting].
  /// [disableConversationLogging] (Output)
  AppVersionSnapshotAppLoggingSettingConversationLoggingSetting({
    this.disableConversationLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableConversationLogging': ?disableConversationLogging,
    };
  }

  factory AppVersionSnapshotAppLoggingSettingConversationLoggingSetting.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotAppLoggingSettingConversationLoggingSetting(
      disableConversationLogging: (() {
        final guardedValue = map['disableConversationLogging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
