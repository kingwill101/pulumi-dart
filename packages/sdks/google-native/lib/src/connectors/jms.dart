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
      'type': ?pulumi.Input.mapOptionalInputValue<JMSType, String>(type, (value) => value.value),
    };
  }

  factory JMS.fromMap(Map<String, dynamic> map) {
    return JMS(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (JMSType.fromValue(map['type']! as String)).input(),
    );
  }
}

