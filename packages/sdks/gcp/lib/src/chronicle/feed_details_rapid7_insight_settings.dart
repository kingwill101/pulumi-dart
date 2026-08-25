// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_rapid7_insight_settings_authentication.dart';

class FeedDetailsRapid7InsightSettings {
  /// HTTP header based authentication.
  final pulumi.Input<FeedDetailsRapid7InsightSettingsAuthentication?>? authentication;
  /// Rapid7 API endpoint. Should be "vulnerabilities" or "assets".
  final pulumi.Input<String?>? endpoint;
  /// API Hostname.
  final pulumi.Input<String?>? hostname;

  /// Creates a new [FeedDetailsRapid7InsightSettings].
  /// [authentication] HTTP header based authentication.
  /// [endpoint] Rapid7 API endpoint. Should be "vulnerabilities" or "assets".
  /// [hostname] API Hostname.
  const FeedDetailsRapid7InsightSettings({
    this.authentication,
    this.endpoint,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsRapid7InsightSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsRapid7InsightSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsRapid7InsightSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsRapid7InsightSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
