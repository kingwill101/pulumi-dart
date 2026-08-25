// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_anomali_settings_authentication.dart';

class FeedDetailsAnomaliSettings {
  /// Info for username and secret based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAnomaliSettingsAuthentication?>? authentication;

  /// Creates a new [FeedDetailsAnomaliSettings].
  /// [authentication] Info for username and secret based authentication.
  const FeedDetailsAnomaliSettings({
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAnomaliSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsAnomaliSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAnomaliSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAnomaliSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
