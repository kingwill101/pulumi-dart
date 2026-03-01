// ignore_for_file: unused_element, unnecessary_cast


/// Describes a blob input data source that contains stream data.
class GatewayMessageBusStreamInputDataSourceResponse {
  /// The name of the Service Bus topic.
  final String? topic;
  /// Indicates the type of input data source containing stream data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'GatewayMessageBus'.
  final String type;

  /// Creates a new [GatewayMessageBusStreamInputDataSourceResponse].
  /// [topic] The name of the Service Bus topic.
  /// [type] Indicates the type of input data source containing stream data. Required on PUT (CreateOrReplace) requests.
  GatewayMessageBusStreamInputDataSourceResponse({
    this.topic,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': ?topic,
      'type': type,
    };
  }

  factory GatewayMessageBusStreamInputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return GatewayMessageBusStreamInputDataSourceResponse(
      topic: map['topic'] == null ? null : map['topic'] as String,
      type: map['type'] as String,
    );
  }
}

