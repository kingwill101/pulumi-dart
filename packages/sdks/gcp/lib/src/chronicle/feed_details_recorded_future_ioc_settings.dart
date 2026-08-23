// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_recorded_future_ioc_settings_authentication.dart';

class FeedDetailsRecordedFutureIocSettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsRecordedFutureIocSettingsAuthentication>? authentication;

  /// Creates a new [FeedDetailsRecordedFutureIocSettings].
  /// [authentication] HTTP header based authentication.
  const FeedDetailsRecordedFutureIocSettings({
    this.authentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsRecordedFutureIocSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
    };
  }

  factory FeedDetailsRecordedFutureIocSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsRecordedFutureIocSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsRecordedFutureIocSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
