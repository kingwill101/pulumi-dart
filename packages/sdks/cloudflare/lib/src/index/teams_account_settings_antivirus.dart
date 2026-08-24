// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_account_settings_antivirus_notification_settings.dart';

class TeamsAccountSettingsAntivirus {
  /// Specify whether to enable anti-virus scanning on downloads.
  final pulumi.Input<bool?>? enabledDownloadPhase;
  /// Specify whether to enable anti-virus scanning on uploads.
  final pulumi.Input<bool?>? enabledUploadPhase;
  /// Specify whether to block requests for unscannable files.
  final pulumi.Input<bool?>? failClosed;
  /// Configure the message the user's device shows during an antivirus scan.
  final pulumi.Input<TeamsAccountSettingsAntivirusNotificationSettings?>? notificationSettings;

  /// Creates a new [TeamsAccountSettingsAntivirus].
  /// [enabledDownloadPhase] Specify whether to enable anti-virus scanning on downloads.
  /// [enabledUploadPhase] Specify whether to enable anti-virus scanning on uploads.
  /// [failClosed] Specify whether to block requests for unscannable files.
  /// [notificationSettings] Configure the message the user's device shows during an antivirus scan.
  const TeamsAccountSettingsAntivirus({
    this.enabledDownloadPhase,
    this.enabledUploadPhase,
    this.failClosed,
    this.notificationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledDownloadPhase': ?enabledDownloadPhase,
      'enabledUploadPhase': ?enabledUploadPhase,
      'failClosed': ?failClosed,
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<TeamsAccountSettingsAntivirusNotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
    };
  }

  factory TeamsAccountSettingsAntivirus.fromMap(Map<String, dynamic> map) {
    return TeamsAccountSettingsAntivirus(
      enabledDownloadPhase: (() { final guardedValue = map['enabledDownloadPhase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabledUploadPhase: (() { final guardedValue = map['enabledUploadPhase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failClosed: (() { final guardedValue = map['failClosed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      notificationSettings: (() { final guardedValue = map['notificationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TeamsAccountSettingsAntivirusNotificationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
