// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a blob input data source that contains stream data.
class GatewayMessageBusStreamInputDataSourceResponse {
  /// The name of the Service Bus topic.
  final pulumi.Input<String>? topic;

  /// Indicates the type of input data source containing stream data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'GatewayMessageBus'.
  final pulumi.Input<String> type;

  /// Creates a new [GatewayMessageBusStreamInputDataSourceResponse].
  /// [topic] The name of the Service Bus topic.
  /// [type] Indicates the type of input data source containing stream data. Required on PUT (CreateOrReplace) requests.
  GatewayMessageBusStreamInputDataSourceResponse({
    this.topic,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topic': ?topic, 'type': type};
  }

  factory GatewayMessageBusStreamInputDataSourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GatewayMessageBusStreamInputDataSourceResponse(
      topic: (() {
        final guardedValue = map['topic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
