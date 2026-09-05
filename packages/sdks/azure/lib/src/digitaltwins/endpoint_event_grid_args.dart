// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_digitaltwins_endpoint_event_grid_endpoint_event_grid_args_doc}
/// The set of arguments for EndpointEventGrid.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_endpoint_event_grid_endpoint_event_grid_args_doc}
class EndpointEventGridArgs {
  /// The storage secret of the dead-lettering, whose format is `https://&lt;storageAccountname&gt;.blob.core.windows.net/&lt;containerName&gt;?&lt;SASToken&gt;`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  final pulumi.Input<String?>? deadLetterStorageSecret;
  /// The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  final pulumi.Input<String> digitalTwinsId;
  /// The endpoint of the Event Grid Topic.
  final pulumi.Input<String> eventgridTopicEndpoint;
  /// The primary access key of the Event Grid Topic.
  final pulumi.Input<String> eventgridTopicPrimaryAccessKey;
  /// The secondary access key of the Event Grid Topic.
  final pulumi.Input<String> eventgridTopicSecondaryAccessKey;
  /// The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  final pulumi.Input<String?>? name;

  /// Creates a new [EndpointEventGridArgs].
  /// [deadLetterStorageSecret] The storage secret of the dead-lettering, whose format is `https://&lt;storageAccountname&gt;.blob.core.windows.net/&lt;containerName&gt;?&lt;SASToken&gt;`. When an endpoint can't deliver an event within a certain time period or after trying to deliver the event a certain number of times, it can send the undelivered event to a storage account.
  /// [digitalTwinsId] The resource ID of the Digital Twins Instance. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  /// [eventgridTopicEndpoint] The endpoint of the Event Grid Topic.
  /// [eventgridTopicPrimaryAccessKey] The primary access key of the Event Grid Topic.
  /// [eventgridTopicSecondaryAccessKey] The secondary access key of the Event Grid Topic.
  /// [name] The name which should be used for this Digital Twins Eventgrid Endpoint. Changing this forces a new Digital Twins Eventgrid Endpoint to be created.
  const EndpointEventGridArgs({
    this.deadLetterStorageSecret,
    required this.digitalTwinsId,
    required this.eventgridTopicEndpoint,
    required this.eventgridTopicPrimaryAccessKey,
    required this.eventgridTopicSecondaryAccessKey,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterStorageSecret': ?deadLetterStorageSecret,
      'digitalTwinsId': digitalTwinsId,
      'eventgridTopicEndpoint': eventgridTopicEndpoint,
      'eventgridTopicPrimaryAccessKey': eventgridTopicPrimaryAccessKey,
      'eventgridTopicSecondaryAccessKey': eventgridTopicSecondaryAccessKey,
      'name': ?name,
    };
  }

  factory EndpointEventGridArgs.fromMap(Map<String, dynamic> map) {
    return EndpointEventGridArgs(
      deadLetterStorageSecret: (() { final guardedValue = map['deadLetterStorageSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      digitalTwinsId: pulumi.Input.fromValue(map['digitalTwinsId'] as String),
      eventgridTopicEndpoint: pulumi.Input.fromValue(map['eventgridTopicEndpoint'] as String),
      eventgridTopicPrimaryAccessKey: pulumi.Input.fromValue(map['eventgridTopicPrimaryAccessKey'] as String),
      eventgridTopicSecondaryAccessKey: pulumi.Input.fromValue(map['eventgridTopicSecondaryAccessKey'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
