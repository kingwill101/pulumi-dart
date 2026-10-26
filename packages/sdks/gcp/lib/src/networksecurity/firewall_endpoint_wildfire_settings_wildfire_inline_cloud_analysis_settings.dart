// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallEndpointWildfireSettingsWildfireInlineCloudAnalysisSettings {
  /// The maximum duration for which the firewall endpoint holds a file
  /// while waiting for an inline cloud analysis verdict before taking
  /// the configured timeout action (1ms to 240000ms, default 30000ms).
  /// A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "30s".
  final pulumi.Input<String?>? maxAnalysisDuration;
  /// Indicates whether logging is disabled when a WildFire inline cloud
  /// analysis submission times out.
  final pulumi.Input<bool?>? submissionTimeoutLoggingDisabled;
  /// The action to take when WildFire inline cloud analysis times out.
  /// Possible values are: `ALLOW`, `DENY`.
  final pulumi.Input<String?>? timeoutAction;

  /// Creates a new [FirewallEndpointWildfireSettingsWildfireInlineCloudAnalysisSettings].
  /// [maxAnalysisDuration] The maximum duration for which the firewall endpoint holds a file
  /// [submissionTimeoutLoggingDisabled] Indicates whether logging is disabled when a WildFire inline cloud
  /// [timeoutAction] The action to take when WildFire inline cloud analysis times out.
  const FirewallEndpointWildfireSettingsWildfireInlineCloudAnalysisSettings({
    this.maxAnalysisDuration,
    this.submissionTimeoutLoggingDisabled,
    this.timeoutAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAnalysisDuration': ?maxAnalysisDuration,
      'submissionTimeoutLoggingDisabled': ?submissionTimeoutLoggingDisabled,
      'timeoutAction': ?timeoutAction,
    };
  }

  factory FirewallEndpointWildfireSettingsWildfireInlineCloudAnalysisSettings.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointWildfireSettingsWildfireInlineCloudAnalysisSettings(
      maxAnalysisDuration: (() { final guardedValue = map['maxAnalysisDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      submissionTimeoutLoggingDisabled: (() { final guardedValue = map['submissionTimeoutLoggingDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeoutAction: (() { final guardedValue = map['timeoutAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
