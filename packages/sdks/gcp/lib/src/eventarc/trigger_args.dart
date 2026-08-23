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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Required. Destination specifies where the events should be sent to.
  /// Structure is documented below.
  final pulumi.Input<TriggerDestination> destination;
  /// Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  final pulumi.Input<String>? eventDataContentType;
  /// Optional. User labels attached to the triggers that can be used to group resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const TriggerArgs({
    this.channel,
    this.deletionPolicy,
    required this.destination,
    this.eventDataContentType,
    this.labels,
    required this.location,
    required this.matchingCriterias,
    this.name,
    this.project,
    this.retryPolicy,
    this.serviceAccount,
    this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
      'deletionPolicy': ?deletionPolicy,
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
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: pulumi.Input.fromValue(TriggerDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      eventDataContentType: (() { final guardedValue = map['eventDataContentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      matchingCriterias: pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerMatchingCriteria>(map['matchingCriterias']!, (value) => TriggerMatchingCriteria.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transport: (() { final guardedValue = map['transport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerTransport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
