// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_symantec_event_export_settings_authentication.dart';

class FeedDetailsSymantecEventExportSettings {
  /// OAuth 2.0 refresh token grant. See https://tools.ietf.org/html/rfc6749.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsSymantecEventExportSettingsAuthentication>? authentication;

  /// Creates a new [FeedDetailsSymantecEventExportSettings].
  /// [authentication] OAuth 2.0 refresh token grant. See https://tools.ietf.org/html/rfc6749.
  const FeedDetailsSymantecEventExportSettings({
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsSymantecEventExportSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsSymantecEventExportSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsSymantecEventExportSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsSymantecEventExportSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
