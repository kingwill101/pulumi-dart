// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files.
class EventStream {
  /// Specifies the data and time at which Storage Transfer Service stops listening for events from this stream. After this time, any transfers in progress will complete, but no new transfers are initiated.
  final pulumi.Input<String>? eventStreamExpirationTime;
  /// Specifies the date and time that Storage Transfer Service starts listening for events from this stream. If no start time is specified or start time is in the past, Storage Transfer Service starts listening immediately.
  final pulumi.Input<String>? eventStreamStartTime;
  /// Specifies a unique name of the resource such as AWS SQS ARN in the form 'arn:aws:sqs:region:account_id:queue_name', or Pub/Sub subscription resource name in the form 'projects/{project}/subscriptions/{sub}'.
  final pulumi.Input<String> name;

  /// Creates a new [EventStream].
  /// [eventStreamExpirationTime] Specifies the data and time at which Storage Transfer Service stops listening for events from this stream. After this time, any transfers in progress will complete, but no new transfers are initiated.
  /// [eventStreamStartTime] Specifies the date and time that Storage Transfer Service starts listening for events from this stream. If no start time is specified or start time is in the past, Storage Transfer Service starts listening immediately.
  /// [name] Specifies a unique name of the resource such as AWS SQS ARN in the form 'arn:aws:sqs:region:account_id:queue_name', or Pub/Sub subscription resource name in the form 'projects/{project}/subscriptions/{sub}'.
  EventStream({
    this.eventStreamExpirationTime,
    this.eventStreamStartTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventStreamExpirationTime': ?eventStreamExpirationTime,
      'eventStreamStartTime': ?eventStreamStartTime,
      'name': name,
    };
  }

  factory EventStream.fromMap(Map<String, dynamic> map) {
    return EventStream(
      eventStreamExpirationTime: map['eventStreamExpirationTime'] == null ? null : (map['eventStreamExpirationTime'] as String).input(),
      eventStreamStartTime: map['eventStreamStartTime'] == null ? null : (map['eventStreamStartTime'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

