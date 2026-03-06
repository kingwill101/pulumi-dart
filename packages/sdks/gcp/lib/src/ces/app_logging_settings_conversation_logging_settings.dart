// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppLoggingSettingsConversationLoggingSettings {
  /// Whether to disable conversation logging for the sessions.
  final pulumi.Input<bool>? disableConversationLogging;

  /// Creates a new [AppLoggingSettingsConversationLoggingSettings].
  /// [disableConversationLogging] Whether to disable conversation logging for the sessions.
  const AppLoggingSettingsConversationLoggingSettings({
    this.disableConversationLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableConversationLogging': ?disableConversationLogging,
    };
  }

  factory AppLoggingSettingsConversationLoggingSettings.fromMap(Map<String, dynamic> map) {
    return AppLoggingSettingsConversationLoggingSettings(
      disableConversationLogging: (() { final guardedValue = map['disableConversationLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

