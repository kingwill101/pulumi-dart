// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_settings_settings_antivirus_notification_settings.dart';

class GetZeroTrustGatewaySettingsSettingsAntivirus {
  /// Specify whether to enable anti-virus scanning on downloads.
  final pulumi.Input<bool> enabledDownloadPhase;
  /// Specify whether to enable anti-virus scanning on uploads.
  final pulumi.Input<bool> enabledUploadPhase;
  /// Specify whether to block requests for unscannable files.
  final pulumi.Input<bool> failClosed;
  /// Configure the message the user's device shows during an antivirus scan.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings> notificationSettings;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsAntivirus].
  /// [enabledDownloadPhase] Specify whether to enable anti-virus scanning on downloads.
  /// [enabledUploadPhase] Specify whether to enable anti-virus scanning on uploads.
  /// [failClosed] Specify whether to block requests for unscannable files.
  /// [notificationSettings] Configure the message the user's device shows during an antivirus scan.
  const GetZeroTrustGatewaySettingsSettingsAntivirus({
    required this.enabledDownloadPhase,
    required this.enabledUploadPhase,
    required this.failClosed,
    required this.notificationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledDownloadPhase': enabledDownloadPhase,
      'enabledUploadPhase': enabledUploadPhase,
      'failClosed': failClosed,
      'notificationSettings': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsAntivirus.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsAntivirus(
      enabledDownloadPhase: pulumi.Input.fromValue(map['enabledDownloadPhase'] as bool),
      enabledUploadPhase: pulumi.Input.fromValue(map['enabledUploadPhase'] as bool),
      failClosed: pulumi.Input.fromValue(map['failClosed'] as bool),
      notificationSettings: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsAntivirusNotificationSettings.fromMap((map['notificationSettings']! as Map).cast<String, dynamic>())),
    );
  }
}
