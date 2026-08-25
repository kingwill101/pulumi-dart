// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_threat_connect_ioc_settings_authentication.dart';

class FeedDetailsThreatConnectIocSettings {
  /// Info for username and secret based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsThreatConnectIocSettingsAuthentication?>? authentication;
  /// API Hostname.
  final pulumi.Input<String?>? hostname;
  /// Owners.
  final pulumi.Input<List<String>?>? owners;

  /// Creates a new [FeedDetailsThreatConnectIocSettings].
  /// [authentication] Info for username and secret based authentication.
  /// [hostname] API Hostname.
  /// [owners] Owners.
  const FeedDetailsThreatConnectIocSettings({
    this.authentication,
    this.hostname,
    this.owners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsThreatConnectIocSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
      'owners': ?owners,
    };
  }

  factory FeedDetailsThreatConnectIocSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsThreatConnectIocSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsThreatConnectIocSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
