// ignore_for_file: unused_element, unnecessary_cast


/// The details of the event associated with a prefix.
class PeeringServicePrefixEventResponse {
  /// The description of the event associated with a prefix.
  final String eventDescription;
  /// The level of the event associated with a prefix.
  final String eventLevel;
  /// The summary of the event associated with a prefix.
  final String eventSummary;
  /// The timestamp of the event associated with a prefix.
  final String eventTimestamp;
  /// The type of the event associated with a prefix.
  final String eventType;

  /// Creates a new [PeeringServicePrefixEventResponse].
  /// [eventDescription] The description of the event associated with a prefix.
  /// [eventLevel] The level of the event associated with a prefix.
  /// [eventSummary] The summary of the event associated with a prefix.
  /// [eventTimestamp] The timestamp of the event associated with a prefix.
  /// [eventType] The type of the event associated with a prefix.
  PeeringServicePrefixEventResponse({
    required this.eventDescription,
    required this.eventLevel,
    required this.eventSummary,
    required this.eventTimestamp,
    required this.eventType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventDescription': eventDescription,
      'eventLevel': eventLevel,
      'eventSummary': eventSummary,
      'eventTimestamp': eventTimestamp,
      'eventType': eventType,
    };
  }

  factory PeeringServicePrefixEventResponse.fromMap(Map<String, dynamic> map) {
    return PeeringServicePrefixEventResponse(
      eventDescription: map['eventDescription'] as String,
      eventLevel: map['eventLevel'] as String,
      eventSummary: map['eventSummary'] as String,
      eventTimestamp: map['eventTimestamp'] as String,
      eventType: map['eventType'] as String,
    );
  }
}

