// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_destination.dart';
import 'trigger_matching_criteria.dart';
import 'trigger_retry_policy.dart';
import 'trigger_transport.dart';

/// {@template pulumi_eventarc_trigger_trigger_args_doc}
/// The set of arguments for Trigger.
/// {@endtemplate}
/// {@macro pulumi_eventarc_trigger_trigger_args_doc}
class TriggerArgs {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  final pulumi.Input<String>? channel;
  /// Required. Destination specifies where the events should be sent to.
  /// Structure is documented below.
  final pulumi.Input<TriggerDestination> destination;
  /// Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  final pulumi.Input<String>? eventDataContentType;
  /// Optional. User labels attached to the triggers that can be used to group resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Required. null The list of filters that applies to event attributes. Only events that match all the provided filters will be sent to the destination.
  /// Structure is documented below.
  final pulumi.Input<List<TriggerMatchingCriteria>> matchingCriterias;
  /// Required. The resource name of the trigger. Must be unique within the location on the project.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The retry policy configuration for the Trigger.
  /// Can only be set with Cloud Run destinations.
  /// Structure is documented below.
  final pulumi.Input<TriggerRetryPolicy>? retryPolicy;
  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have `roles/eventarc.eventReceiver` IAM role.
  final pulumi.Input<String>? serviceAccount;
  /// Optional. In order to deliver messages, Eventarc may use other GCP products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  /// Structure is documented below.
  final pulumi.Input<TriggerTransport>? transport;

  /// Creates a new [TriggerArgs].
  /// [channel] Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  /// [destination] Required. Destination specifies where the events should be sent to.
  /// [eventDataContentType] Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  /// [labels] Optional. User labels attached to the triggers that can be used to group resources.
  /// [location] The location for the resource
  /// [matchingCriterias] Required. null The list of filters that applies to event attributes. Only events that match all the provided filters will be sent to the destination.
  /// [name] Required. The resource name of the trigger. Must be unique within the location on the project.
  /// [project] The ID of the project in which the resource belongs.
  /// [retryPolicy] The retry policy configuration for the Trigger.
  /// [serviceAccount] Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have `roles/eventarc.eventReceiver` IAM role.
  /// [transport] Optional. In order to deliver messages, Eventarc may use other GCP products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  TriggerArgs({
    pulumi.Output<String>? channel,
    required pulumi.Output<TriggerDestination> destination,
    pulumi.Output<String>? eventDataContentType,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    required pulumi.Output<List<TriggerMatchingCriteria>> matchingCriterias,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<TriggerRetryPolicy>? retryPolicy,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<TriggerTransport>? transport,
  }) :
      channel = pulumi.Input.asOptionalInput<String>(channel),
      destination = pulumi.Input.asInput<TriggerDestination>(destination),
      eventDataContentType = pulumi.Input.asOptionalInput<String>(eventDataContentType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      matchingCriterias = pulumi.Input.asInput<List<TriggerMatchingCriteria>>(matchingCriterias),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      retryPolicy = pulumi.Input.asOptionalInput<TriggerRetryPolicy>(retryPolicy),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      transport = pulumi.Input.asOptionalInput<TriggerTransport>(transport);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
      'destination': pulumi.Input.mapInputValue<TriggerDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'eventDataContentType': ?eventDataContentType,
      'labels': ?labels,
      'location': location,
      'matchingCriterias': pulumi.Input.mapInputValue<List<TriggerMatchingCriteria>, List<Map<String, dynamic>>>(matchingCriterias, (value) => pulumi.Input.encodeList<TriggerMatchingCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<TriggerRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'transport': ?pulumi.Input.mapOptionalInputValue<TriggerTransport, Map<String, dynamic>>(transport, (value) => value.toMap()),
    };
  }

  factory TriggerArgs.fromMap(Map<String, dynamic> map) {
    return TriggerArgs(
      channel: map['channel'] == null ? null : pulumi.Output.create<String>(map['channel'] as String),
      destination: pulumi.Output.create<TriggerDestination>(TriggerDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())),
      eventDataContentType: map['eventDataContentType'] == null ? null : pulumi.Output.create<String>(map['eventDataContentType'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      matchingCriterias: pulumi.Output.create<List<TriggerMatchingCriteria>>(pulumi.Input.decodeList<TriggerMatchingCriteria>(map['matchingCriterias'], (value) => TriggerMatchingCriteria.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      retryPolicy: map['retryPolicy'] == null ? null : pulumi.Output.create<TriggerRetryPolicy>(TriggerRetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      transport: map['transport'] == null ? null : pulumi.Output.create<TriggerTransport>(TriggerTransport.fromMap((map['transport'] as Map).cast<String, dynamic>())),
    );
  }
}

