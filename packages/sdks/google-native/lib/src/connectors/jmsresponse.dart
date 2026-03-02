// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// JMS message denotes the source of the event
class JMSResponse {
  /// Optional. Name of the JMS source. i.e. queueName or topicName
  final pulumi.Input<String> name;
  /// Optional. Type of the JMS Source. i.e. Queue or Topic
  final pulumi.Input<String> type;

  /// Creates a new [JMSResponse].
  /// [name] Optional. Name of the JMS source. i.e. queueName or topicName
  /// [type] Optional. Type of the JMS Source. i.e. Queue or Topic
  JMSResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory JMSResponse.fromMap(Map<String, dynamic> map) {
    return JMSResponse(
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

