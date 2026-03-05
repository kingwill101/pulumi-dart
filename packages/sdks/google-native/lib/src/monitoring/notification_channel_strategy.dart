// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Control over how the notification channels in notification_channels are notified when this alert fires, on a per-channel basis.
class NotificationChannelStrategy {
  /// The full REST resource name for the notification channels that these settings apply to. Each of these correspond to the name field in one of the NotificationChannel objects referenced in the notification_channels field of this AlertPolicy. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]
  final pulumi.Input<List<String>>? notificationChannelNames;
  /// The frequency at which to send reminder notifications for open incidents.
  final pulumi.Input<String>? renotifyInterval;

  /// Creates a new [NotificationChannelStrategy].
  /// [notificationChannelNames] The full REST resource name for the notification channels that these settings apply to. Each of these correspond to the name field in one of the NotificationChannel objects referenced in the notification_channels field of this AlertPolicy. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]
  /// [renotifyInterval] The frequency at which to send reminder notifications for open incidents.
  NotificationChannelStrategy({
    this.notificationChannelNames,
    this.renotifyInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationChannelNames': ?notificationChannelNames,
      'renotifyInterval': ?renotifyInterval,
    };
  }

  factory NotificationChannelStrategy.fromMap(Map<String, dynamic> map) {
    return NotificationChannelStrategy(
      notificationChannelNames: (() { final guardedValue = map['notificationChannelNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      renotifyInterval: (() { final guardedValue = map['renotifyInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

