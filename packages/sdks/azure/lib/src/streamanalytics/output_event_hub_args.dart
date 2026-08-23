// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_event_hub_serialization.dart';

/// {@template pulumi_streamanalytics_output_event_hub_output_event_hub_args_doc}
/// The set of arguments for OutputEventHub.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_output_event_hub_output_event_hub_args_doc}
class OutputEventHubArgs {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The name of the Event Hub.
  final pulumi.Input<String> eventhubName;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The column that is used for the Event Hub partition key.
  final pulumi.Input<String>? partitionKey;
  /// A list of property columns to add to the Event Hub output.
  final pulumi.Input<List<String>>? propertyColumns;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `serialization` block as defined below.
  final pulumi.Input<OutputEventHubSerialization> serialization;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  final pulumi.Input<String> servicebusNamespace;
  /// The shared access policy key for the specified shared access policy. Required when `authenticationMode` is set to `ConnectionString`.
  final pulumi.Input<String>? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when `authenticationMode` is set to `ConnectionString`.
  final pulumi.Input<String>? sharedAccessPolicyName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;

  /// Creates a new [OutputEventHubArgs].
  /// [authenticationMode] The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  /// [eventhubName] The name of the Event Hub.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [partitionKey] The column that is used for the Event Hub partition key.
  /// [propertyColumns] A list of property columns to add to the Event Hub output.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [serialization] A `serialization` block as defined below.
  /// [servicebusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required when `authenticationMode` is set to `ConnectionString`.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when `authenticationMode` is set to `ConnectionString`.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  const OutputEventHubArgs({
    this.authenticationMode,
    required this.eventhubName,
    this.name,
    this.partitionKey,
    this.propertyColumns,
    required this.resourceGroupName,
    required this.serialization,
    required this.servicebusNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    required this.streamAnalyticsJobName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'eventhubName': eventhubName,
      'name': ?name,
      'partitionKey': ?partitionKey,
      'propertyColumns': ?propertyColumns,
      'resourceGroupName': resourceGroupName,
      'serialization': pulumi.Input.mapInputValue<OutputEventHubSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'servicebusNamespace': servicebusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'streamAnalyticsJobName': streamAnalyticsJobName,
    };
  }

  factory OutputEventHubArgs.fromMap(Map<String, dynamic> map) {
    return OutputEventHubArgs(
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventhubName: pulumi.Input.fromValue(map['eventhubName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKey: (() { final guardedValue = map['partitionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertyColumns: (() { final guardedValue = map['propertyColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serialization: pulumi.Input.fromValue(OutputEventHubSerialization.fromMap((map['serialization']! as Map).cast<String, dynamic>())),
      servicebusNamespace: pulumi.Input.fromValue(map['servicebusNamespace'] as String),
      sharedAccessPolicyKey: (() { final guardedValue = map['sharedAccessPolicyKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedAccessPolicyName: (() { final guardedValue = map['sharedAccessPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamAnalyticsJobName: pulumi.Input.fromValue(map['streamAnalyticsJobName'] as String),
    );
  }
}
