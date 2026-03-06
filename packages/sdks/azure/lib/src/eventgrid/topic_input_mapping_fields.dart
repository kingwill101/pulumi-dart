// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicInputMappingFields {
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

  /// Creates a new [TopicInputMappingFields].
  /// [dataVersion] Specifies the data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [eventTime] Specifies the event time of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [eventType] Specifies the event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [id] Specifies the id of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [subject] Specifies the subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [topic] Specifies the topic of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  const TopicInputMappingFields({
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
      dataVersion: (() { final guardedValue = map['dataVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventTime: (() { final guardedValue = map['eventTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventType: (() { final guardedValue = map['eventType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

