// ignore_for_file: unused_element, unnecessary_cast


class DomainInputMappingDefaultValues {
  /// Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final String? dataVersion;
  /// Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final String? eventType;
  /// Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  final String? subject;

  /// Creates a new [DomainInputMappingDefaultValues].
  /// [dataVersion] Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [eventType] Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  /// [subject] Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
  DomainInputMappingDefaultValues({
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
      dataVersion: map['dataVersion'] == null ? null : map['dataVersion'] as String,
      eventType: map['eventType'] == null ? null : map['eventType'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
    );
  }
}

