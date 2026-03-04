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
    this.authenticationMode,
    this.eventhubName,
    this.name,
    this.partitionKey,
    this.propertyColumns,
    this.resourceGroupName,
    this.serialization,
    this.servicebusNamespace,
    this.sharedAccessPolicyKey,
    this.sharedAccessPolicyName,
    this.streamAnalyticsJobName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'eventhubName': ?eventhubName,
      'name': ?name,
      'partitionKey': ?partitionKey,
      'propertyColumns': ?propertyColumns,
      'resourceGroupName': ?resourceGroupName,
      'serialization':
          ?pulumi.Input.mapOptionalInputValue<
            OutputEventHubSerialization,
            Map<String, dynamic>
          >(serialization, (value) => value.toMap()),
      'servicebusNamespace': ?servicebusNamespace,
      'sharedAccessPolicyKey': ?sharedAccessPolicyKey,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
    };
  }

  factory OutputEventHubState.fromMap(Map<String, dynamic> map) {
    return OutputEventHubState(
      authenticationMode: (() {
        final guardedValue = map['authenticationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventhubName: (() {
        final guardedValue = map['eventhubName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partitionKey: (() {
        final guardedValue = map['partitionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      propertyColumns: (() {
        final guardedValue = map['propertyColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serialization: (() {
        final guardedValue = map['serialization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OutputEventHubSerialization.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      servicebusNamespace: (() {
        final guardedValue = map['servicebusNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      streamAnalyticsJobName: (() {
        final guardedValue = map['streamAnalyticsJobName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
