// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainInputMappingField {
  /// Specifies the default data version of the EventGrid Event associated with the domain.
  final pulumi.Input<String> dataVersion;
  /// Specifies the event time of the EventGrid Event associated with the domain.
  final pulumi.Input<String> eventTime;
  /// Specifies the default event type of the EventGrid Event associated with the domain.
  final pulumi.Input<String> eventType;
  /// Specifies the id of the EventGrid Event associated with the domain.
  final pulumi.Input<String> id;
  /// Specifies the default subject of the EventGrid Event associated with the domain.
  final pulumi.Input<String> subject;
  /// Specifies the topic of the EventGrid Event associated with the domain.
  final pulumi.Input<String> topic;

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
      dataVersion: (map['dataVersion'] as String).input(),
      eventTime: (map['eventTime'] as String).input(),
      eventType: (map['eventType'] as String).input(),
      id: (map['id'] as String).input(),
      subject: (map['subject'] as String).input(),
      topic: (map['topic'] as String).input(),
    );
  }
}

