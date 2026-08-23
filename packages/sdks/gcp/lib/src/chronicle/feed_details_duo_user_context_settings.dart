// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_duo_user_context_settings_authentication.dart';

class FeedDetailsDuoUserContextSettings {
  /// Info for username and secret based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsDuoUserContextSettingsAuthentication>? authentication;
  /// API hostname.
  final pulumi.Input<String>? hostname;

  /// Creates a new [FeedDetailsDuoUserContextSettings].
  /// [authentication] Info for username and secret based authentication.
  /// [hostname] API hostname.
  const FeedDetailsDuoUserContextSettings({
    this.authentication,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsDuoUserContextSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsDuoUserContextSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsDuoUserContextSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsDuoUserContextSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
