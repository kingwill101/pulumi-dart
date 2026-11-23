// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GdaObservabilitySettingConversationalAnalyticsSetting {
  /// Whether to enable feedback.
  final pulumi.Input<bool?>? feedbackEnabled;
  /// Whether to enable logging.
  final pulumi.Input<bool?>? loggingEnabled;
  /// Whether to enable metrics.
  final pulumi.Input<bool?>? metricsEnabled;
  /// Whether to enable traces.
  final pulumi.Input<bool?>? tracesEnabled;

  /// Creates a new [GdaObservabilitySettingConversationalAnalyticsSetting].
  /// [feedbackEnabled] Whether to enable feedback.
  /// [loggingEnabled] Whether to enable logging.
  /// [metricsEnabled] Whether to enable metrics.
  /// [tracesEnabled] Whether to enable traces.
  const GdaObservabilitySettingConversationalAnalyticsSetting({
    this.feedbackEnabled,
    this.loggingEnabled,
    this.metricsEnabled,
    this.tracesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feedbackEnabled': ?feedbackEnabled,
      'loggingEnabled': ?loggingEnabled,
      'metricsEnabled': ?metricsEnabled,
      'tracesEnabled': ?tracesEnabled,
    };
  }

  factory GdaObservabilitySettingConversationalAnalyticsSetting.fromMap(Map<String, dynamic> map) {
    return GdaObservabilitySettingConversationalAnalyticsSetting(
      feedbackEnabled: (() { final guardedValue = map['feedbackEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loggingEnabled: (() { final guardedValue = map['loggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metricsEnabled: (() { final guardedValue = map['metricsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tracesEnabled: (() { final guardedValue = map['tracesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
