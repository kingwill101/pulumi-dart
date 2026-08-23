// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_okta_settings_authentication.dart';

class FeedDetailsOktaSettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsOktaSettingsAuthentication>? authentication;
  /// API Hostname.
  final pulumi.Input<String>? hostname;

  /// Creates a new [FeedDetailsOktaSettings].
  /// [authentication] HTTP header based authentication.
  /// [hostname] API Hostname.
  const FeedDetailsOktaSettings({
    this.authentication,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsOktaSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsOktaSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsOktaSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsOktaSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
