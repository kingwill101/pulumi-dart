// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_cloud_passage_settings_authentication.dart';

class FeedDetailsCloudPassageSettings {
  /// Info for username and secret based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsCloudPassageSettingsAuthentication?>? authentication;
  /// Event types filter for the events API.
  final pulumi.Input<List<String>?>? eventTypes;

  /// Creates a new [FeedDetailsCloudPassageSettings].
  /// [authentication] Info for username and secret based authentication.
  /// [eventTypes] Event types filter for the events API.
  const FeedDetailsCloudPassageSettings({
    this.authentication,
    this.eventTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsCloudPassageSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'eventTypes': ?eventTypes,
    };
  }

  factory FeedDetailsCloudPassageSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsCloudPassageSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsCloudPassageSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventTypes: (() { final guardedValue = map['eventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
