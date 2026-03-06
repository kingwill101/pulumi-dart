// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainInputMappingDefaultValues {
  /// Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dataVersion;
  /// Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventType;
  /// Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subject;

  /// Creates a new [DomainInputMappingDefaultValues].
  /// [dataVersion] Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [eventType] Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [subject] Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  const DomainInputMappingDefaultValues({
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

  factory DomainInputMappingDefaultValues.fromMap(Map<String, dynamic> map) {
    return DomainInputMappingDefaultValues(
      dataVersion: (() { final guardedValue = map['dataVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventType: (() { final guardedValue = map['eventType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

