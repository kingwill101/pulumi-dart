// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileLoggingConfig {
  /// Whether to log conversation events
  final pulumi.Input<bool>? enableStackdriverLogging;

  /// Creates a new [ConversationProfileLoggingConfig].
  /// [enableStackdriverLogging] Whether to log conversation events
  const ConversationProfileLoggingConfig({
    this.enableStackdriverLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableStackdriverLogging': ?enableStackdriverLogging,
    };
  }

  factory ConversationProfileLoggingConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileLoggingConfig(
      enableStackdriverLogging: (() { final guardedValue = map['enableStackdriverLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
