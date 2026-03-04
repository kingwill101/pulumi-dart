// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_endpoint_servicebus_queue_endpoint_servicebus_queue_args_doc}
/// The set of arguments for EndpointServicebusQueue.
/// {@endtemplate}
/// {@macro pulumi_iot_endpoint_servicebus_queue_endpoint_servicebus_queue_args_doc}
class EndpointServicebusQueueArgs {
  /// Type used to authenticate against the Service Bus Queue endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  final pulumi.Input<String>? authenticationType;

  /// The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`.
  final pulumi.Input<String>? connectionString;

  /// URI of the Service Bus endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  final pulumi.Input<String>? endpointUri;

  /// Name of the Service Bus Queue. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  final pulumi.Input<String>? entityPath;

  /// ID of the User Managed Identity used to authenticate against the Service Bus Queue endpoint.
  ///
  /// &gt; **Note:** `identity_id` can only be specified when `authentication_type` is `identityBased`. It must be one of the `identity_ids` of the Iot Hub. If not specified when `authentication_type` is `identityBased`, System Assigned Managed Identity of the Iot Hub will be used.
  final pulumi.Input<String>? identityId;

  /// The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubId;

  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the resource group under which the Service Bus Queue has been created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The subscription ID for the endpoint.
  ///
  /// &gt; **Note:** When `subscription_id` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [EndpointServicebusQueueArgs].
  /// [authenticationType] Type used to authenticate against the Service Bus Queue endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  /// [connectionString] The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`.
  /// [endpointUri] URI of the Service Bus endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  /// [entityPath] Name of the Service Bus Queue. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  /// [identityId] ID of the User Managed Identity used to authenticate against the Service Bus Queue endpoint.
  /// [iothubId] The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  /// [name] The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the Service Bus Queue has been created. Changing this forces a new resource to be created.
  /// [subscriptionId] The subscription ID for the endpoint.
  EndpointServicebusQueueArgs({
    this.authenticationType,
    this.connectionString,
    this.endpointUri,
    this.entityPath,
    this.identityId,
    required this.iothubId,
    this.name,
    required this.resourceGroupName,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'connectionString': ?connectionString,
      'endpointUri': ?endpointUri,
      'entityPath': ?entityPath,
      'identityId': ?identityId,
      'iothubId': iothubId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory EndpointServicebusQueueArgs.fromMap(Map<String, dynamic> map) {
    return EndpointServicebusQueueArgs(
      authenticationType: (() {
        final guardedValue = map['authenticationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointUri: (() {
        final guardedValue = map['endpointUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      entityPath: (() {
        final guardedValue = map['entityPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identityId: (() {
        final guardedValue = map['identityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iothubId: pulumi.Input.fromValue(map['iothubId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
