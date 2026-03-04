// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_service_bus_queue_serialization.dart';

/// {@template pulumi_streamanalytics_output_service_bus_queue_output_service_bus_queue_args_doc}
/// The set of arguments for OutputServiceBusQueue.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_output_service_bus_queue_output_service_bus_queue_args_doc}
class OutputServiceBusQueueArgs {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;

  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// A list of property columns to add to the Service Bus Queue output.
  final pulumi.Input<List<String>>? propertyColumns;

  /// The name of the Service Bus Queue.
  final pulumi.Input<String> queueName;

  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// A `serialization` block as defined below.
  final pulumi.Input<OutputServiceBusQueueSerialization> serialization;

  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  final pulumi.Input<String> servicebusNamespace;

  /// The shared access policy key for the specified shared access policy. Required if `authentication_mode` is `ConnectionString`.
  final pulumi.Input<String>? sharedAccessPolicyKey;

  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required if `authentication_mode` is `ConnectionString`.
  final pulumi.Input<String>? sharedAccessPolicyName;

  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;

  /// A key-value pair of system property columns that will be attached to the outgoing messages for the Service Bus Queue Output.
  ///
  /// &gt; **Note:** The acceptable keys are `ContentType`, `CorrelationId`, `Label`, `MessageId`, `PartitionKey`, `ReplyTo`, `ReplyToSessionId`, `ScheduledEnqueueTimeUtc`, `SessionId`, `TimeToLive` and `To`.
  final pulumi.Input<Map<String, String>>? systemPropertyColumns;

  /// Creates a new [OutputServiceBusQueueArgs].
  /// [authenticationMode] The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [propertyColumns] A list of property columns to add to the Service Bus Queue output.
  /// [queueName] The name of the Service Bus Queue.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [serialization] A `serialization` block as defined below.
  /// [servicebusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required if `authentication_mode` is `ConnectionString`.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required if `authentication_mode` is `ConnectionString`.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [systemPropertyColumns] A key-value pair of system property columns that will be attached to the outgoing messages for the Service Bus Queue Output.
  OutputServiceBusQueueArgs({
    this.authenticationMode,
    this.name,
    this.propertyColumns,
    required this.queueName,
    required this.resourceGroupName,
    required this.serialization,
    required this.servicebusNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    required this.streamAnalyticsJobName,
    this.systemPropertyColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'name': ?name,
      'propertyColumns': ?propertyColumns,
      'queueName': queueName,
      'resourceGroupName': resourceGroupName,
      'serialization':
          pulumi.Input.mapInputValue<
            OutputServiceBusQueueSerialization,
            Map<String, dynamic>
          >(serialization, (value) => value.toMap()),
      'servicebusNamespace': servicebusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'streamAnalyticsJobName': streamAnalyticsJobName,
      'systemPropertyColumns': ?systemPropertyColumns,
    };
  }

  factory OutputServiceBusQueueArgs.fromMap(Map<String, dynamic> map) {
    return OutputServiceBusQueueArgs(
      authenticationMode: (() {
        final guardedValue = map['authenticationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      propertyColumns: (() {
        final guardedValue = map['propertyColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      queueName: pulumi.Input.fromValue(map['queueName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serialization: pulumi.Input.fromValue(
        OutputServiceBusQueueSerialization.fromMap(
          (map['serialization']! as Map).cast<String, dynamic>(),
        ),
      ),
      servicebusNamespace: pulumi.Input.fromValue(
        map['servicebusNamespace'] as String,
      ),
      sharedAccessPolicyKey: (() {
        final guardedValue = map['sharedAccessPolicyKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharedAccessPolicyName: (() {
        final guardedValue = map['sharedAccessPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streamAnalyticsJobName: pulumi.Input.fromValue(
        map['streamAnalyticsJobName'] as String,
      ),
      systemPropertyColumns: (() {
        final guardedValue = map['systemPropertyColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
