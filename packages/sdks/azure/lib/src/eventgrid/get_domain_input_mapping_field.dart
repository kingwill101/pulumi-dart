// ignore_for_file: unused_element, unnecessary_cast


class GetDomainInputMappingField {
  /// Specifies the default data version of the EventGrid Event associated with the domain.
  final String dataVersion;
  /// Specifies the event time of the EventGrid Event associated with the domain.
  final String eventTime;
  /// Specifies the default event type of the EventGrid Event associated with the domain.
  final String eventType;
  /// Specifies the id of the EventGrid Event associated with the domain.
  final String id;
  /// Specifies the default subject of the EventGrid Event associated with the domain.
  final String subject;
  /// Specifies the topic of the EventGrid Event associated with the domain.
  final String topic;

  /// Creates a new [GetDomainInputMappingField].
  /// [dataVersion] Specifies the default data version of the EventGrid Event associated with the domain.
  /// [eventTime] Specifies the event time of the EventGrid Event associated with the domain.
  /// [eventType] Specifies the default event type of the EventGrid Event associated with the domain.
  /// [id] Specifies the id of the EventGrid Event associated with the domain.
  /// [subject] Specifies the default subject of the EventGrid Event associated with the domain.
  /// [topic] Specifies the topic of the EventGrid Event associated with the domain.
  GetDomainInputMappingField({
    required this.dataVersion,
    required this.eventTime,
    required this.eventType,
    required this.id,
    required this.subject,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataVersion': dataVersion,
      'eventTime': eventTime,
      'eventType': eventType,
      'id': id,
      'subject': subject,
      'topic': topic,
    };
  }

  factory GetDomainInputMappingField.fromMap(Map<String, dynamic> map) {
    return GetDomainInputMappingField(
      dataVersion: map['dataVersion'] as String,
      eventTime: map['eventTime'] as String,
      eventType: map['eventType'] as String,
      id: map['id'] as String,
      subject: map['subject'] as String,
      topic: map['topic'] as String,
    );
  }
}

