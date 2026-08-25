// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_crowdstrike_detects_settings_authentication.dart';

class FeedDetailsCrowdstrikeDetectsSettings {
  /// OAuth 2.0 client credentials grant. See https://tools.ietf.org/html/rfc6749.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsCrowdstrikeDetectsSettingsAuthentication?>? authentication;
  /// API Hostname.
  final pulumi.Input<String?>? hostname;
  /// Ingestion Type.
  /// Possible values:
  /// BRING_ONLY_NEW_DETECTIONS
  /// BRING_ALL_DETECTIONS
  final pulumi.Input<String?>? ingestionType;

  /// Creates a new [FeedDetailsCrowdstrikeDetectsSettings].
  /// [authentication] OAuth 2.0 client credentials grant. See https://tools.ietf.org/html/rfc6749.
  /// [hostname] API Hostname.
  /// [ingestionType] Ingestion Type.
  const FeedDetailsCrowdstrikeDetectsSettings({
    this.authentication,
    this.hostname,
    this.ingestionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsCrowdstrikeDetectsSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
      'ingestionType': ?ingestionType,
    };
  }

  factory FeedDetailsCrowdstrikeDetectsSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsCrowdstrikeDetectsSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsCrowdstrikeDetectsSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestionType: (() { final guardedValue = map['ingestionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
