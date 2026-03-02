// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicInputMappingDefaultValues {
  /// Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dataVersion;
  /// Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventType;
  /// Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subject;

  /// Creates a new [TopicInputMappingDefaultValues].
  /// [dataVersion] Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [eventType] Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [subject] Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  TopicInputMappingDefaultValues({
    this.dataVersion,
    this.eventType,
    this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataVersion': ?dataVersion,
      'eventType': ?eventType,
      'subject': ?subject,
    };
  }

  factory TopicInputMappingDefaultValues.fromMap(Map<String, dynamic> map) {
    return TopicInputMappingDefaultValues(
      dataVersion: map['dataVersion'] == null ? null : (map['dataVersion'] as String).input(),
      eventType: map['eventType'] == null ? null : (map['eventType'] as String).input(),
      subject: map['subject'] == null ? null : (map['subject'] as String).input(),
    );
  }
}

