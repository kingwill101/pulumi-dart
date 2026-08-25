// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_pan_ioc_settings_authentication.dart';

class FeedDetailsPanIocSettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsPanIocSettingsAuthentication?>? authentication;
  /// PAN IOC feed name.
  final pulumi.Input<String?>? feed;
  /// PAN IOC feed ID.
  final pulumi.Input<String?>? feedId;

  /// Creates a new [FeedDetailsPanIocSettings].
  /// [authentication] HTTP header based authentication.
  /// [feed] PAN IOC feed name.
  /// [feedId] PAN IOC feed ID.
  const FeedDetailsPanIocSettings({
    this.authentication,
    this.feed,
    this.feedId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsPanIocSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'feed': ?feed,
      'feedId': ?feedId,
    };
  }

  factory FeedDetailsPanIocSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsPanIocSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsPanIocSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      feed: (() { final guardedValue = map['feed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      feedId: (() { final guardedValue = map['feedId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
