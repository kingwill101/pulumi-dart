// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_mimecast_mail_settings_authentication.dart';

class FeedDetailsMimecastMailSettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsMimecastMailSettingsAuthentication?>? authentication;
  /// API Hostname.
  final pulumi.Input<String?>? hostname;

  /// Creates a new [FeedDetailsMimecastMailSettings].
  /// [authentication] HTTP header based authentication.
  /// [hostname] API Hostname.
  const FeedDetailsMimecastMailSettings({
    this.authentication,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsMimecastMailSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsMimecastMailSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsMimecastMailSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsMimecastMailSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
