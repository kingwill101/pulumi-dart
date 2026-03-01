// ignore_for_file: unused_element, unnecessary_cast


class TopicInputMappingFields {
  /// Specifies the data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final String? dataVersion;
  /// Specifies the event time of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final String? eventTime;
  /// Specifies the event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final String? eventType;
  /// Specifies the id of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final String? id;
  /// Specifies the subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final String? subject;
  /// Specifies the topic of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final String? topic;

  /// Creates a new [TopicInputMappingFields].
  /// [dataVersion] Specifies the data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [eventTime] Specifies the event time of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [eventType] Specifies the event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [id] Specifies the id of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [subject] Specifies the subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [topic] Specifies the topic of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  TopicInputMappingFields({
    this.dataVersion,
    this.eventTime,
    this.eventType,
    this.id,
    this.subject,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataVersion': ?dataVersion,
      'eventTime': ?eventTime,
      'eventType': ?eventType,
      'id': ?id,
      'subject': ?subject,
      'topic': ?topic,
    };
  }

  factory TopicInputMappingFields.fromMap(Map<String, dynamic> map) {
    return TopicInputMappingFields(
      dataVersion: map['dataVersion'] == null ? null : map['dataVersion'] as String,
      eventTime: map['eventTime'] == null ? null : map['eventTime'] as String,
      eventType: map['eventType'] == null ? null : map['eventType'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}

