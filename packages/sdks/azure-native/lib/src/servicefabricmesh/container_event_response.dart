// ignore_for_file: unused_element, unnecessary_cast


/// A container event.
class ContainerEventResponse {
  /// The count of the event.
  final int? count;
  /// Date/time of the first event.
  final String? firstTimestamp;
  /// Date/time of the last event.
  final String? lastTimestamp;
  /// The event message
  final String? message;
  /// The name of the container event.
  final String? name;
  /// The event type.
  final String? type;

  /// Creates a new [ContainerEventResponse].
  /// [count] The count of the event.
  /// [firstTimestamp] Date/time of the first event.
  /// [lastTimestamp] Date/time of the last event.
  /// [message] The event message
  /// [name] The name of the container event.
  /// [type] The event type.
  ContainerEventResponse({
    this.count,
    this.firstTimestamp,
    this.lastTimestamp,
    this.message,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'firstTimestamp': ?firstTimestamp,
      'lastTimestamp': ?lastTimestamp,
      'message': ?message,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ContainerEventResponse.fromMap(Map<String, dynamic> map) {
    return ContainerEventResponse(
      count: map['count'] == null ? null : map['count'] as int,
      firstTimestamp: map['firstTimestamp'] == null ? null : map['firstTimestamp'] as String,
      lastTimestamp: map['lastTimestamp'] == null ? null : map['lastTimestamp'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

