// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_mandiant_ioc_settings_authentication.dart';

class FeedDetailsMandiantIocSettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsMandiantIocSettingsAuthentication>? authentication;
  /// time since when to start fetching the IOCs
  final pulumi.Input<String>? startTime;

  /// Creates a new [FeedDetailsMandiantIocSettings].
  /// [authentication] HTTP header based authentication.
  /// [startTime] time since when to start fetching the IOCs
  const FeedDetailsMandiantIocSettings({
    this.authentication,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsMandiantIocSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'startTime': ?startTime,
    };
  }

  factory FeedDetailsMandiantIocSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsMandiantIocSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsMandiantIocSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
