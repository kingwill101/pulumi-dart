// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files.
class EventStreamResponse {
  /// Specifies the data and time at which Storage Transfer Service stops listening for events from this stream. After this time, any transfers in progress will complete, but no new transfers are initiated.
  final pulumi.Input<String> eventStreamExpirationTime;
  /// Specifies the date and time that Storage Transfer Service starts listening for events from this stream. If no start time is specified or start time is in the past, Storage Transfer Service starts listening immediately.
  final pulumi.Input<String> eventStreamStartTime;
  /// Specifies a unique name of the resource such as AWS SQS ARN in the form 'arn:aws:sqs:region:account_id:queue_name', or Pub/Sub subscription resource name in the form 'projects/{project}/subscriptions/{sub}'.
  final pulumi.Input<String> name;

  /// Creates a new [EventStreamResponse].
  /// [eventStreamExpirationTime] Specifies the data and time at which Storage Transfer Service stops listening for events from this stream. After this time, any transfers in progress will complete, but no new transfers are initiated.
  /// [eventStreamStartTime] Specifies the date and time that Storage Transfer Service starts listening for events from this stream. If no start time is specified or start time is in the past, Storage Transfer Service starts listening immediately.
  /// [name] Specifies a unique name of the resource such as AWS SQS ARN in the form 'arn:aws:sqs:region:account_id:queue_name', or Pub/Sub subscription resource name in the form 'projects/{project}/subscriptions/{sub}'.
  const EventStreamResponse({
    required this.eventStreamExpirationTime,
    required this.eventStreamStartTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventStreamExpirationTime': eventStreamExpirationTime,
      'eventStreamStartTime': eventStreamStartTime,
      'name': name,
    };
  }

  factory EventStreamResponse.fromMap(Map<String, dynamic> map) {
    return EventStreamResponse(
      eventStreamExpirationTime: pulumi.Input.fromValue(map['eventStreamExpirationTime'] as String),
      eventStreamStartTime: pulumi.Input.fromValue(map['eventStreamStartTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
