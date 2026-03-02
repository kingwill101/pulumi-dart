// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a Gateway Message Bus output data source.
class GatewayMessageBusOutputDataSource {
  /// The name of the Service Bus topic.
  final pulumi.Input<String>? topic;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'GatewayMessageBus'.
  final pulumi.Input<String> type;

  /// Creates a new [GatewayMessageBusOutputDataSource].
  /// [topic] The name of the Service Bus topic.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  GatewayMessageBusOutputDataSource({
    this.topic,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': ?topic,
      'type': type,
    };
  }

  factory GatewayMessageBusOutputDataSource.fromMap(Map<String, dynamic> map) {
    return GatewayMessageBusOutputDataSource(
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

