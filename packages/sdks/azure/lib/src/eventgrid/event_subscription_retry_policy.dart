// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionRetryPolicy {
  /// Specifies the time to live (in minutes) for events. Supported range is `1` to `1440`. See [official documentation](https://docs.microsoft.com/azure/event-grid/manage-event-delivery#set-retry-policy) for more details.
  final pulumi.Input<int> eventTimeToLive;
  /// Specifies the maximum number of delivery retry attempts for events.
  final pulumi.Input<int> maxDeliveryAttempts;

  /// Creates a new [EventSubscriptionRetryPolicy].
  /// [eventTimeToLive] Specifies the time to live (in minutes) for events. Supported range is `1` to `1440`. See [official documentation](https://docs.microsoft.com/azure/event-grid/manage-event-delivery#set-retry-policy) for more details.
  /// [maxDeliveryAttempts] Specifies the maximum number of delivery retry attempts for events.
  EventSubscriptionRetryPolicy({
    required this.eventTimeToLive,
    required this.maxDeliveryAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTimeToLive': eventTimeToLive,
      'maxDeliveryAttempts': maxDeliveryAttempts,
    };
  }

  factory EventSubscriptionRetryPolicy.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionRetryPolicy(
      eventTimeToLive: (map['eventTimeToLive'] as int).input(),
      maxDeliveryAttempts: (map['maxDeliveryAttempts'] as int).input(),
    );
  }
}

