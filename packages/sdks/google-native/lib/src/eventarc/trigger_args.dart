// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination.dart';
import 'event_filter.dart';
import 'transport.dart';

/// {@template pulumi_eventarc_v1_trigger_args_doc}
/// The set of arguments for Trigger.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1_trigger_args_doc}
class TriggerArgs {
  /// Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  final pulumi.Input<String>? channel;
  /// Destination specifies where the events should be sent to.
  final pulumi.Input<Destination> destination;
  /// Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  final pulumi.Input<String>? eventDataContentType;
  /// Unordered list. The list of filters that applies to event attributes. Only events that match all the provided filters are sent to the destination.
  final pulumi.Input<List<EventFilter>> eventFilters;
  /// Optional. User labels attached to the triggers that can be used to group resources.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource name of the trigger. Must be unique within the location of the project and must be in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The `iam.serviceAccounts.actAs` permission must be granted on the service account to allow a principal to impersonate the service account. For more information, see the [Roles and permissions](/eventarc/docs/all-roles-permissions) page specific to the trigger destination.
  final pulumi.Input<String>? serviceAccount;
  /// Optional. To deliver messages, Eventarc might use other Google Cloud products as a transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  final pulumi.Input<Transport>? transport;
  /// Required. The user-provided ID to be assigned to the trigger.
  final pulumi.Input<String> triggerId;

  /// Creates a new [TriggerArgs].
  /// [channel] Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{location}/channels/{channel}` format. You must provide a channel to receive events from Eventarc SaaS partners.
  /// [destination] Destination specifies where the events should be sent to.
  /// [eventDataContentType] Optional. EventDataContentType specifies the type of payload in MIME format that is expected from the CloudEvent data field. This is set to `application/json` if the value is not defined.
  /// [eventFilters] Unordered list. The list of filters that applies to event attributes. Only events that match all the provided filters are sent to the destination.
  /// [labels] Optional. User labels attached to the triggers that can be used to group resources.
  /// [location] Optional.
  /// [name] The resource name of the trigger. Must be unique within the location of the project and must be in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  /// [project] Optional.
  /// [serviceAccount] Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The `iam.serviceAccounts.actAs` permission must be granted on the service account to allow a principal to impersonate the service account. For more information, see the [Roles and permissions](/eventarc/docs/all-roles-permissions) page specific to the trigger destination.
  /// [transport] Optional. To deliver messages, Eventarc might use other Google Cloud products as a transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  /// [triggerId] Required. The user-provided ID to be assigned to the trigger.
  TriggerArgs({
    this.channel,
    required this.destination,
    this.eventDataContentType,
    required this.eventFilters,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.serviceAccount,
    this.transport,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
      'destination': pulumi.Input.mapInputValue<Destination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'eventDataContentType': ?eventDataContentType,
      'eventFilters': pulumi.Input.mapInputValue<List<EventFilter>, List<Map<String, dynamic>>>(eventFilters, (value) => pulumi.Input.encodeList<EventFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceAccount': ?serviceAccount,
      'transport': ?pulumi.Input.mapOptionalInputValue<Transport, Map<String, dynamic>>(transport, (value) => value.toMap()),
      'triggerId': triggerId,
    };
  }

  factory TriggerArgs.fromMap(Map<String, dynamic> map) {
    return TriggerArgs(
      channel: map['channel'] == null ? null : (map['channel']! as String).input(),
      destination: (Destination.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      eventDataContentType: map['eventDataContentType'] == null ? null : (map['eventDataContentType']! as String).input(),
      eventFilters: (pulumi.Input.decodeList<EventFilter>(map['eventFilters'], (value) => EventFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      transport: map['transport'] == null ? null : (Transport.fromMap((map['transport']! as Map).cast<String, dynamic>())).input(),
      triggerId: (map['triggerId'] as String).input(),
    );
  }
}

