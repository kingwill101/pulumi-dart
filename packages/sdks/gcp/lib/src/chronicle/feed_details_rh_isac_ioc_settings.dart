// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_rh_isac_ioc_settings_authentication.dart';

class FeedDetailsRhIsacIocSettings {
  /// OAuth 2.0 client credentials grant. See https://tools.ietf.org/html/rfc6749.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsRhIsacIocSettingsAuthentication>? authentication;

  /// Creates a new [FeedDetailsRhIsacIocSettings].
  /// [authentication] OAuth 2.0 client credentials grant. See https://tools.ietf.org/html/rfc6749.
  const FeedDetailsRhIsacIocSettings({
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsRhIsacIocSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsRhIsacIocSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsRhIsacIocSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsRhIsacIocSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
