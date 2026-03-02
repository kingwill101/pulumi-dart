// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionAzureFunctionEndpoint {
  /// Specifies the ID of the Function where the Event Subscription will receive events. This must be the functions ID in format {function_app.id}/functions/{name}.
  final pulumi.Input<String> functionId;
  /// Maximum number of events per batch.
  final pulumi.Input<int>? maxEventsPerBatch;
  /// Preferred batch size in Kilobytes.
  final pulumi.Input<int>? preferredBatchSizeInKilobytes;

  /// Creates a new [EventSubscriptionAzureFunctionEndpoint].
  /// [functionId] Specifies the ID of the Function where the Event Subscription will receive events. This must be the functions ID in format {function_app.id}/functions/{name}.
  /// [maxEventsPerBatch] Maximum number of events per batch.
  /// [preferredBatchSizeInKilobytes] Preferred batch size in Kilobytes.
  EventSubscriptionAzureFunctionEndpoint({
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

  factory EventSubscriptionAzureFunctionEndpoint.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAzureFunctionEndpoint(
      functionId: (map['functionId'] as String).input(),
      maxEventsPerBatch: map['maxEventsPerBatch'] == null ? null : (map['maxEventsPerBatch'] as int).input(),
      preferredBatchSizeInKilobytes: map['preferredBatchSizeInKilobytes'] == null ? null : (map['preferredBatchSizeInKilobytes'] as int).input(),
    );
  }
}

