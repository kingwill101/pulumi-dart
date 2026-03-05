// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainInputMappingDefaultValue {
  /// Specifies the default data version of the EventGrid Event associated with the domain.
  final pulumi.Input<String> dataVersion;
  /// Specifies the default event type of the EventGrid Event associated with the domain.
  final pulumi.Input<String> eventType;
  /// Specifies the default subject of the EventGrid Event associated with the domain.
  final pulumi.Input<String> subject;

  /// Creates a new [GetDomainInputMappingDefaultValue].
  /// [dataVersion] Specifies the default data version of the EventGrid Event associated with the domain.
  /// [eventType] Specifies the default event type of the EventGrid Event associated with the domain.
  /// [subject] Specifies the default subject of the EventGrid Event associated with the domain.
  GetDomainInputMappingDefaultValue({
    required this.dataVersion,
    required this.eventType,
    required this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataVersion': dataVersion,
      'eventType': eventType,
      'subject': subject,
    };
  }

  factory GetDomainInputMappingDefaultValue.fromMap(Map<String, dynamic> map) {
    return GetDomainInputMappingDefaultValue(
      dataVersion: pulumi.Input.fromValue(map['dataVersion'] as String),
      eventType: pulumi.Input.fromValue(map['eventType'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
    );
  }
}

