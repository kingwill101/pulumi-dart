// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SystemTopicEventSubscriptionAzureFunctionEndpoint {
  /// Specifies the ID of the Function where the Event Subscription will receive events. This must be the functions ID in format {function_app.id}/functions/{name}.
  final pulumi.Input<String> functionId;

  /// Maximum number of events per batch.
  final pulumi.Input<int>? maxEventsPerBatch;

  /// Preferred batch size in Kilobytes.
  final pulumi.Input<int>? preferredBatchSizeInKilobytes;

  /// Creates a new [SystemTopicEventSubscriptionAzureFunctionEndpoint].
  /// [functionId] Specifies the ID of the Function where the Event Subscription will receive events. This must be the functions ID in format {function_app.id}/functions/{name}.
  /// [maxEventsPerBatch] Maximum number of events per batch.
  /// [preferredBatchSizeInKilobytes] Preferred batch size in Kilobytes.
  SystemTopicEventSubscriptionAzureFunctionEndpoint({
    required this.functionId,
    this.maxEventsPerBatch,
    this.preferredBatchSizeInKilobytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionId': functionId,
      'maxEventsPerBatch': ?maxEventsPerBatch,
      'preferredBatchSizeInKilobytes': ?preferredBatchSizeInKilobytes,
    };
  }

  factory SystemTopicEventSubscriptionAzureFunctionEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return SystemTopicEventSubscriptionAzureFunctionEndpoint(
      functionId: pulumi.Input.fromValue(map['functionId'] as String),
      maxEventsPerBatch: (() {
        final guardedValue = map['maxEventsPerBatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      preferredBatchSizeInKilobytes: (() {
        final guardedValue = map['preferredBatchSizeInKilobytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
