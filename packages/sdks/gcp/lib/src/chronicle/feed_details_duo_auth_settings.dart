// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_duo_auth_settings_authentication.dart';

class FeedDetailsDuoAuthSettings {
  /// Info for username and secret based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsDuoAuthSettingsAuthentication>? authentication;
  /// API Hostname.
  final pulumi.Input<String>? hostname;

  /// Creates a new [FeedDetailsDuoAuthSettings].
  /// [authentication] Info for username and secret based authentication.
  /// [hostname] API Hostname.
  const FeedDetailsDuoAuthSettings({
    this.authentication,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsDuoAuthSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsDuoAuthSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsDuoAuthSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsDuoAuthSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
