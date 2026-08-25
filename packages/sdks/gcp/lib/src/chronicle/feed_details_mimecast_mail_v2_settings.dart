// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_mimecast_mail_v2_settings_auth_credentials.dart';

class FeedDetailsMimecastMailV2Settings {
  /// OAuth 2.0 client credentials grant. See https://tools.ietf.org/html/rfc6749.
  /// NEXT TAG: 3
  final pulumi.Input<FeedDetailsMimecastMailV2SettingsAuthCredentials?>? authCredentials;

  /// Creates a new [FeedDetailsMimecastMailV2Settings].
  /// [authCredentials] OAuth 2.0 client credentials grant. See https://tools.ietf.org/html/rfc6749.
  const FeedDetailsMimecastMailV2Settings({
    this.authCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCredentials': ?pulumi.Input.mapOptionalInputValue<FeedDetailsMimecastMailV2SettingsAuthCredentials, Map<String, dynamic>>(authCredentials, (value) => value.toMap()),
    };
  }

  factory FeedDetailsMimecastMailV2Settings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsMimecastMailV2Settings(
      authCredentials: (() { final guardedValue = map['authCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsMimecastMailV2SettingsAuthCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
