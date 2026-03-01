// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_eventarc_v1beta1.dart';
import 'matching_criteria.dart';

/// {@template pulumi_eventarc_v1beta1_trigger_eventarc_v1beta1_args_doc}
/// The set of arguments for Trigger.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1beta1_trigger_eventarc_v1beta1_args_doc}
class TriggerEventarcV1beta1Args {
  /// Destination specifies where the events should be sent to.
  final pulumi.Input<DestinationEventarcV1beta1> destination;
  /// Optional. User labels attached to the triggers that can be used to group resources.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Unordered list. The criteria by which events are filtered. Only events that match with this criteria will be sent to the destination.
  final pulumi.Input<List<MatchingCriteria>> matchingCriteria;
  /// The resource name of the trigger. Must be unique within the location on the project and must in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have 'eventarc.events.receiveAuditLogV1Written' permission.
  final pulumi.Input<String>? serviceAccount;
  /// Required. The user-provided ID to be assigned to the trigger.
  final pulumi.Input<String> triggerId;

  /// Creates a new [TriggerEventarcV1beta1Args].
  /// [destination] Destination specifies where the events should be sent to.
  /// [labels] Optional. User labels attached to the triggers that can be used to group resources.
  /// [location] Optional.
  /// [matchingCriteria] Unordered list. The criteria by which events are filtered. Only events that match with this criteria will be sent to the destination.
  /// [name] The resource name of the trigger. Must be unique within the location on the project and must in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  /// [project] Optional.
  /// [serviceAccount] Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have 'eventarc.events.receiveAuditLogV1Written' permission.
  /// [triggerId] Required. The user-provided ID to be assigned to the trigger.
  TriggerEventarcV1beta1Args({
    required pulumi.Output<DestinationEventarcV1beta1> destination,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    required pulumi.Output<List<MatchingCriteria>> matchingCriteria,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? serviceAccount,
    required pulumi.Output<String> triggerId,
  }) :
      destination = pulumi.Input.asInput<DestinationEventarcV1beta1>(destination),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      matchingCriteria = pulumi.Input.asInput<List<MatchingCriteria>>(matchingCriteria),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      triggerId = pulumi.Input.asInput<String>(triggerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<DestinationEventarcV1beta1, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'matchingCriteria': pulumi.Input.mapInputValue<List<MatchingCriteria>, List<Map<String, dynamic>>>(matchingCriteria, (value) => pulumi.Input.encodeList<MatchingCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'serviceAccount': ?serviceAccount,
      'triggerId': triggerId,
    };
  }

  factory TriggerEventarcV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TriggerEventarcV1beta1Args(
      destination: pulumi.Output.create<DestinationEventarcV1beta1>(DestinationEventarcV1beta1.fromMap((map['destination'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      matchingCriteria: pulumi.Output.create<List<MatchingCriteria>>(pulumi.Input.decodeList<MatchingCriteria>(map['matchingCriteria'], (value) => MatchingCriteria.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      triggerId: pulumi.Output.create<String>(map['triggerId'] as String),
    );
  }
}

