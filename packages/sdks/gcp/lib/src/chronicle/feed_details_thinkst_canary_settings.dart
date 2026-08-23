// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_thinkst_canary_settings_authentication.dart';

class FeedDetailsThinkstCanarySettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsThinkstCanarySettingsAuthentication>? authentication;
  /// API Hostname.
  final pulumi.Input<String>? hostname;

  /// Creates a new [FeedDetailsThinkstCanarySettings].
  /// [authentication] HTTP header based authentication.
  /// [hostname] API Hostname.
  const FeedDetailsThinkstCanarySettings({
    this.authentication,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsThinkstCanarySettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
    };
  }

  factory FeedDetailsThinkstCanarySettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsThinkstCanarySettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsThinkstCanarySettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
