// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_sentinelone_alert_settings_authentication.dart';

class FeedDetailsSentineloneAlertSettings {
  /// HTTP header based authentication.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsSentineloneAlertSettingsAuthentication?>? authentication;
  /// Hostname of SentinelOne alert settings.
  final pulumi.Input<String?>? hostname;
  /// initialStartTime from when to fetch the alerts
  final pulumi.Input<String?>? initialStartTime;
  /// Is the customer subscribed to Alerts Api
  final pulumi.Input<bool?>? isAlertApiSubscribed;

  /// Creates a new [FeedDetailsSentineloneAlertSettings].
  /// [authentication] HTTP header based authentication.
  /// [hostname] Hostname of SentinelOne alert settings.
  /// [initialStartTime] initialStartTime from when to fetch the alerts
  /// [isAlertApiSubscribed] Is the customer subscribed to Alerts Api
  const FeedDetailsSentineloneAlertSettings({
    this.authentication,
    this.hostname,
    this.initialStartTime,
    this.isAlertApiSubscribed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsSentineloneAlertSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'hostname': ?hostname,
      'initialStartTime': ?initialStartTime,
      'isAlertApiSubscribed': ?isAlertApiSubscribed,
    };
  }

  factory FeedDetailsSentineloneAlertSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsSentineloneAlertSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsSentineloneAlertSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialStartTime: (() { final guardedValue = map['initialStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isAlertApiSubscribed: (() { final guardedValue = map['isAlertApiSubscribed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
