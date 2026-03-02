// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainInputMappingFields {
  /// Specifies the data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dataVersion;
  /// Specifies the event time of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventTime;
  /// Specifies the event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventType;
  /// Specifies the id of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? id;
  /// Specifies the subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subject;
  /// Specifies the topic of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? topic;

  /// Creates a new [DomainInputMappingFields].
  /// [dataVersion] Specifies the data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [eventTime] Specifies the event time of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [eventType] Specifies the event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [id] Specifies the id of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [subject] Specifies the subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [topic] Specifies the topic of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  DomainInputMappingFields({
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

  factory DomainInputMappingFields.fromMap(Map<String, dynamic> map) {
    return DomainInputMappingFields(
      dataVersion: map['dataVersion'] == null ? null : (map['dataVersion']! as String).input(),
      eventTime: map['eventTime'] == null ? null : (map['eventTime']! as String).input(),
      eventType: map['eventType'] == null ? null : (map['eventType']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      subject: map['subject'] == null ? null : (map['subject']! as String).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
    );
  }
}

