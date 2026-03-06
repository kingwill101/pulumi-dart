// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyAlertStrategyNotificationChannelStrategy {
  /// The notification channels that these settings apply to. Each of these
  /// correspond to the name field in one of the NotificationChannel objects
  /// referenced in the notification_channels field of this AlertPolicy. The format is
  /// `projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]`
  final pulumi.Input<List<String>>? notificationChannelNames;
  /// The frequency at which to send reminder notifications for open incidents.
  final pulumi.Input<String>? renotifyInterval;

  /// Creates a new [AlertPolicyAlertStrategyNotificationChannelStrategy].
  /// [notificationChannelNames] The notification channels that these settings apply to. Each of these
  /// [renotifyInterval] The frequency at which to send reminder notifications for open incidents.
  const AlertPolicyAlertStrategyNotificationChannelStrategy({
    this.notificationChannelNames,
    this.renotifyInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationChannelNames': ?notificationChannelNames,
      'renotifyInterval': ?renotifyInterval,
    };
  }

  factory AlertPolicyAlertStrategyNotificationChannelStrategy.fromMap(Map<String, dynamic> map) {
    return AlertPolicyAlertStrategyNotificationChannelStrategy(
      notificationChannelNames: (() { final guardedValue = map['notificationChannelNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      renotifyInterval: (() { final guardedValue = map['renotifyInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

