// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppErrorHandlingSettingFallbackResponseConfig {
  /// (Output)
  /// The fallback messages in case of system errors (e.g. LLM errors),
  /// mapped by supported language code
  /// (https://docs.cloud.google.com/customer-engagement-ai/conversational-agents/ps/reference/language).
  final pulumi.Input<Map<String, String>?>? customFallbackMessages;
  /// (Output)
  /// The maximum number of fallback attempts to make before the agent
  /// emitting EndSession Signal.
  final pulumi.Input<int?>? maxFallbackAttempts;

  /// Creates a new [AppVersionSnapshotAppErrorHandlingSettingFallbackResponseConfig].
  /// [customFallbackMessages] (Output)
  /// [maxFallbackAttempts] (Output)
  const AppVersionSnapshotAppErrorHandlingSettingFallbackResponseConfig({
    this.customFallbackMessages,
    this.maxFallbackAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFallbackMessages': ?customFallbackMessages,
      'maxFallbackAttempts': ?maxFallbackAttempts,
    };
  }

  factory AppVersionSnapshotAppErrorHandlingSettingFallbackResponseConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppErrorHandlingSettingFallbackResponseConfig(
      customFallbackMessages: (() { final guardedValue = map['customFallbackMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      maxFallbackAttempts: (() { final guardedValue = map['maxFallbackAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
