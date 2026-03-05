// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jmstype.dart';

/// JMS message denotes the source of the event
class JMS {
  /// Optional. Name of the JMS source. i.e. queueName or topicName
  final pulumi.Input<String>? name;
  /// Optional. Type of the JMS Source. i.e. Queue or Topic
  final pulumi.Input<JMSType>? type;

  /// Creates a new [JMS].
  /// [name] Optional. Name of the JMS source. i.e. queueName or topicName
  /// [type] Optional. Type of the JMS Source. i.e. Queue or Topic
  JMS({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?pulumi.Input.mapOptionalInputValue<JMSType, String>(type, (value) => value.wireValue),
    };
  }

  factory JMS.fromMap(Map<String, dynamic> map) {
    return JMS(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JMSType.fromValue(guardedValue as String)); })(),
    );
  }
}

