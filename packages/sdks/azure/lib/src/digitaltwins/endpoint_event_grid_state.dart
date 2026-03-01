// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointEventGrid resources.
class EndpointEventGridState {
  /// The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  final pulumi.Input<String>? deadLetterStorageSecret;
  /// The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  final pulumi.Input<String>? digitalTwinsId;
  /// The endpoint of the Event Grid Topic.
  final pulumi.Input<String>? eventgridTopicEndpoint;
  /// The primary access key of the Event Grid Topic.
  final pulumi.Input<String>? eventgridTopicPrimaryAccessKey;
  /// The secondary access key of the Event Grid Topic.
  final pulumi.Input<String>? eventgridTopicSecondaryAccessKey;
  /// The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [EndpointEventGridState].
  /// [deadLetterStorageSecret] The storage secret of the dead-lettering, whose format is `https://<storageAccountname>.blob.core.windows.net/<containerName>?<SASToken>`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  /// [digitalTwinsId] The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  /// [eventgridTopicEndpoint] The endpoint of the Event Grid Topic.
  /// [eventgridTopicPrimaryAccessKey] The primary access key of the Event Grid Topic.
  /// [eventgridTopicSecondaryAccessKey] The secondary access key of the Event Grid Topic.
  /// [name] The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  EndpointEventGridState({
    pulumi.Output<String>? deadLetterStorageSecret,
    pulumi.Output<String>? digitalTwinsId,
    pulumi.Output<String>? eventgridTopicEndpoint,
    pulumi.Output<String>? eventgridTopicPrimaryAccessKey,
    pulumi.Output<String>? eventgridTopicSecondaryAccessKey,
    pulumi.Output<String>? name,
  }) :
      deadLetterStorageSecret = pulumi.Input.asOptionalInput<String>(deadLetterStorageSecret),
      digitalTwinsId = pulumi.Input.asOptionalInput<String>(digitalTwinsId),
      eventgridTopicEndpoint = pulumi.Input.asOptionalInput<String>(eventgridTopicEndpoint),
      eventgridTopicPrimaryAccessKey = pulumi.Input.asOptionalInput<String>(eventgridTopicPrimaryAccessKey),
      eventgridTopicSecondaryAccessKey = pulumi.Input.asOptionalInput<String>(eventgridTopicSecondaryAccessKey),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterStorageSecret': ?deadLetterStorageSecret,
      'digitalTwinsId': ?digitalTwinsId,
      'eventgridTopicEndpoint': ?eventgridTopicEndpoint,
      'eventgridTopicPrimaryAccessKey': ?eventgridTopicPrimaryAccessKey,
      'eventgridTopicSecondaryAccessKey': ?eventgridTopicSecondaryAccessKey,
      'name': ?name,
    };
  }

  factory EndpointEventGridState.fromMap(Map<String, dynamic> map) {
    return EndpointEventGridState(
      deadLetterStorageSecret: map['deadLetterStorageSecret'] == null ? null : pulumi.Output.create<String>(map['deadLetterStorageSecret'] as String),
      digitalTwinsId: map['digitalTwinsId'] == null ? null : pulumi.Output.create<String>(map['digitalTwinsId'] as String),
      eventgridTopicEndpoint: map['eventgridTopicEndpoint'] == null ? null : pulumi.Output.create<String>(map['eventgridTopicEndpoint'] as String),
      eventgridTopicPrimaryAccessKey: map['eventgridTopicPrimaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['eventgridTopicPrimaryAccessKey'] as String),
      eventgridTopicSecondaryAccessKey: map['eventgridTopicSecondaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['eventgridTopicSecondaryAccessKey'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

