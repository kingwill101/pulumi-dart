// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_service_now_cmdb_settings_authentication.dart';

class FeedDetailsServiceNowCmdbSettings {
  /// Info for username and secret based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsServiceNowCmdbSettingsAuthentication?>? authentication;
  /// Feedname.
  final pulumi.Input<String?>? feedname;
  /// API Hostname.
  final pulumi.Input<String?>? hostname;

  /// Creates a new [FeedDetailsServiceNowCmdbSettings].
  /// [authentication] Info for username and secret based authentication.
  /// [feedname] Feedname.
  /// [hostname] API Hostname.
  const FeedDetailsServiceNowCmdbSettings({
    this.authentication,
    this.feedname,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsServiceNowCmdbSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'feedname': ?feedname,
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsServiceNowCmdbSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsServiceNowCmdbSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsServiceNowCmdbSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      feedname: (() { final guardedValue = map['feedname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
