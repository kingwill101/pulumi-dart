// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_crowdstrike_alerts_settings_authentication.dart';

class FeedDetailsCrowdstrikeAlertsSettings {
  /// OAuth 2.0 client credentials grant. See https://tools.ietf.org/html/rfc6749.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsCrowdstrikeAlertsSettingsAuthentication> authentication;
  /// API Hostname.
  final pulumi.Input<String> hostname;
  /// Ingestion Type.
  /// Possible values:
  /// BRING_ALL_ALERTS
  /// BRING_ONLY_NEW_ALERTS
  final pulumi.Input<String?>? ingestionType;

  /// Creates a new [FeedDetailsCrowdstrikeAlertsSettings].
  /// [authentication] OAuth 2.0 client credentials grant. See https://tools.ietf.org/html/rfc6749.
  /// [hostname] API Hostname.
  /// [ingestionType] Ingestion Type.
  const FeedDetailsCrowdstrikeAlertsSettings({
    required this.authentication,
    required this.hostname,
    this.ingestionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<FeedDetailsCrowdstrikeAlertsSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': hostname,
      'ingestionType': ?ingestionType,
    };
  }

  factory FeedDetailsCrowdstrikeAlertsSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsCrowdstrikeAlertsSettings(
      authentication: pulumi.Input.fromValue(FeedDetailsCrowdstrikeAlertsSettingsAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      ingestionType: (() { final guardedValue = map['ingestionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
