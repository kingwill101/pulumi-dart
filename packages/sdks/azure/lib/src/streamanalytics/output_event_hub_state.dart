// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_event_hub_serialization.dart';

/// Input properties used for looking up and filtering OutputEventHub resources.
class OutputEventHubState {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The name of the Event Hub.
  final pulumi.Input<String>? eventhubName;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The column that is used for the Event Hub partition key.
  final pulumi.Input<String>? partitionKey;
  /// A list of property columns to add to the Event Hub output.
  final pulumi.Input<List<String>>? propertyColumns;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `serialization` block as defined below.
  final pulumi.Input<OutputEventHubSerialization>? serialization;
  /// The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  final pulumi.Input<String>? servicebusNamespace;
  /// The shared access policy key for the specified shared access policy. Required when `authentication_mode` is set to `ConnectionString`.
  final pulumi.Input<String>? sharedAccessPolicyKey;
  /// The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when `authentication_mode` is set to `ConnectionString`.
  final pulumi.Input<String>? sharedAccessPolicyName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobName;

  /// Creates a new [OutputEventHubState].
  /// [authenticationMode] The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  /// [eventhubName] The name of the Event Hub.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [partitionKey] The column that is used for the Event Hub partition key.
  /// [propertyColumns] A list of property columns to add to the Event Hub output.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [serialization] A `serialization` block as defined below.
  /// [servicebusNamespace] The namespace that is associated with the desired Event Hub, Service Bus Queue, Service Bus Topic, etc.
  /// [sharedAccessPolicyKey] The shared access policy key for the specified shared access policy. Required when `authentication_mode` is set to `ConnectionString`.
  /// [sharedAccessPolicyName] The shared access policy name for the Event Hub, Service Bus Queue, Service Bus Topic, etc. Required when `authentication_mode` is set to `ConnectionString`.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  OutputEventHubState({
    pulumi.Output<String>? authenticationMode,
    pulumi.Output<String>? eventhubName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partitionKey,
    pulumi.Output<List<String>>? propertyColumns,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<OutputEventHubSerialization>? serialization,
    pulumi.Output<String>? servicebusNamespace,
    pulumi.Output<String>? sharedAccessPolicyKey,
    pulumi.Output<String>? sharedAccessPolicyName,
    pulumi.Output<String>? streamAnalyticsJobName,
  }) :
      authenticationMode = pulumi.Input.asOptionalInput<String>(authenticationMode),
      eventhubName = pulumi.Input.asOptionalInput<String>(eventhubName),
      name = pulumi.Input.asOptionalInput<String>(name),
      partitionKey = pulumi.Input.asOptionalInput<String>(partitionKey),
      propertyColumns = pulumi.Input.asOptionalInput<List<String>>(propertyColumns),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serialization = pulumi.Input.asOptionalInput<OutputEventHubSerialization>(serialization),
      servicebusNamespace = pulumi.Input.asOptionalInput<String>(servicebusNamespace),
      sharedAccessPolicyKey = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyKey),
      sharedAccessPolicyName = pulumi.Input.asOptionalInput<String>(sharedAccessPolicyName),
      streamAnalyticsJobName = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'eventhubName': ?eventhubName,
      'name': ?name,
      'partitionKey': ?partitionKey,
      'propertyColumns': ?propertyColumns,
      'resourceGroupName': ?resourceGroupName,
      'serialization': ?pulumi.Input.mapOptionalInputValue<OutputEventHubSerialization, Map<String, dynamic>>(serialization, (value) => value.toMap()),
      'servicebusNamespace': ?servicebusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
    };
  }

  factory OutputEventHubState.fromMap(Map<String, dynamic> map) {
    return OutputEventHubState(
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<String>(map['authenticationMode'] as String),
      eventhubName: map['eventhubName'] == null ? null : pulumi.Output.create<String>(map['eventhubName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partitionKey: map['partitionKey'] == null ? null : pulumi.Output.create<String>(map['partitionKey'] as String),
      propertyColumns: map['propertyColumns'] == null ? null : pulumi.Output.create<List<String>>((map['propertyColumns'] as List).cast<String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serialization: map['serialization'] == null ? null : pulumi.Output.create<OutputEventHubSerialization>(OutputEventHubSerialization.fromMap((map['serialization'] as Map).cast<String, dynamic>())),
      servicebusNamespace: map['servicebusNamespace'] == null ? null : pulumi.Output.create<String>(map['servicebusNamespace'] as String),
      sharedAccessPolicyKey: map['sharedAccessPolicyKey'] == null ? null : pulumi.Output.create<String>(map['sharedAccessPolicyKey'] as String),
      sharedAccessPolicyName: map['sharedAccessPolicyName'] == null ? null : pulumi.Output.create<String>(map['sharedAccessPolicyName'] as String),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobName'] as String),
    );
  }
}

