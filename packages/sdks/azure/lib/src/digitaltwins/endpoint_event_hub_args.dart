// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_digitaltwins_endpoint_event_hub_endpoint_event_hub_args_doc}
/// The set of arguments for EndpointEventHub.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_endpoint_event_hub_endpoint_event_hub_args_doc}
class EndpointEventHubArgs {
  /// The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  final pulumi.Input<String>? deadLetterStorageSecret;
  /// The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Event Hub Endpoint to be created.
  final pulumi.Input<String> digitalTwinsId;
  /// The primary connection string of the Event Hub Authorization Rule with a minimum of `send` permission.
  final pulumi.Input<String> eventhubPrimaryConnectionString;
  /// The secondary connection string of the Event Hub Authorization Rule with a minimum of `send` permission.
  final pulumi.Input<String> eventhubSecondaryConnectionString;
  /// The name which should be used for this Digital Twins Event Hub Endpoint. Changing this forces a new Digital Twins Event Hub Endpoint to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [EndpointEventHubArgs].
  /// [deadLetterStorageSecret] The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  /// [digitalTwinsId] The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Event Hub Endpoint to be created.
  /// [eventhubPrimaryConnectionString] The primary connection string of the Event Hub Authorization Rule with a minimum of `send` permission.
  /// [eventhubSecondaryConnectionString] The secondary connection string of the Event Hub Authorization Rule with a minimum of `send` permission.
  /// [name] The name which should be used for this Digital Twins Event Hub Endpoint. Changing this forces a new Digital Twins Event Hub Endpoint to be created.
  EndpointEventHubArgs({
    pulumi.Output<String>? deadLetterStorageSecret,
    required pulumi.Output<String> digitalTwinsId,
    required pulumi.Output<String> eventhubPrimaryConnectionString,
    required pulumi.Output<String> eventhubSecondaryConnectionString,
    pulumi.Output<String>? name,
  }) :
      deadLetterStorageSecret = pulumi.Input.asOptionalInput<String>(deadLetterStorageSecret),
      digitalTwinsId = pulumi.Input.asInput<String>(digitalTwinsId),
      eventhubPrimaryConnectionString = pulumi.Input.asInput<String>(eventhubPrimaryConnectionString),
      eventhubSecondaryConnectionString = pulumi.Input.asInput<String>(eventhubSecondaryConnectionString),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterStorageSecret': ?deadLetterStorageSecret,
      'digitalTwinsId': digitalTwinsId,
      'eventhubPrimaryConnectionString': eventhubPrimaryConnectionString,
      'eventhubSecondaryConnectionString': eventhubSecondaryConnectionString,
      'name': ?name,
    };
  }

  factory EndpointEventHubArgs.fromMap(Map<String, dynamic> map) {
    return EndpointEventHubArgs(
      deadLetterStorageSecret: map['deadLetterStorageSecret'] == null ? null : pulumi.Output.create<String>(map['deadLetterStorageSecret'] as String),
      digitalTwinsId: pulumi.Output.create<String>(map['digitalTwinsId'] as String),
      eventhubPrimaryConnectionString: pulumi.Output.create<String>(map['eventhubPrimaryConnectionString'] as String),
      eventhubSecondaryConnectionString: pulumi.Output.create<String>(map['eventhubSecondaryConnectionString'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

