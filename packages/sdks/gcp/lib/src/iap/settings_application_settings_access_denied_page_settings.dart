// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsApplicationSettingsAccessDeniedPageSettings {
  /// The URI to be redirected to when access is denied.
  final pulumi.Input<String>? accessDeniedPageUri;
  /// Whether to generate a troubleshooting URL on access denied events to this application.
  final pulumi.Input<bool>? generateTroubleshootingUri;
  /// Whether to generate remediation token on access denied events to this application.
  final pulumi.Input<bool>? remediationTokenGenerationEnabled;

  /// Creates a new [SettingsApplicationSettingsAccessDeniedPageSettings].
  /// [accessDeniedPageUri] The URI to be redirected to when access is denied.
  /// [generateTroubleshootingUri] Whether to generate a troubleshooting URL on access denied events to this application.
  /// [remediationTokenGenerationEnabled] Whether to generate remediation token on access denied events to this application.
  SettingsApplicationSettingsAccessDeniedPageSettings({
    this.accessDeniedPageUri,
    this.generateTroubleshootingUri,
    this.remediationTokenGenerationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessDeniedPageUri': ?accessDeniedPageUri,
      'generateTroubleshootingUri': ?generateTroubleshootingUri,
      'remediationTokenGenerationEnabled': ?remediationTokenGenerationEnabled,
    };
  }

  factory SettingsApplicationSettingsAccessDeniedPageSettings.fromMap(Map<String, dynamic> map) {
    return SettingsApplicationSettingsAccessDeniedPageSettings(
      accessDeniedPageUri: (() { final guardedValue = map['accessDeniedPageUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generateTroubleshootingUri: (() { final guardedValue = map['generateTroubleshootingUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remediationTokenGenerationEnabled: (() { final guardedValue = map['remediationTokenGenerationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

