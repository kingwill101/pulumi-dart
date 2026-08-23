// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_response_eventarc_v1beta1.dart';
import 'matching_criteria_response.dart';
import 'transport_response_eventarc_v1beta1.dart';

/// Result data returned by getTrigger.
class GetTriggerEventarcV1beta1Result {
  /// The creation time.
  final String createTime;
  /// Destination specifies where the events should be sent to.
  final DestinationResponseEventarcV1beta1 destination;
  /// This checksum is computed by the server based on the value of other fields, and may be sent only on create requests to ensure the client has an up-to-date value before proceeding.
  final String etag;
  /// Optional. User labels attached to the triggers that can be used to group resources.
  final Map<String, String> labels;
  /// Unordered list. The criteria by which events are filtered. Only events that match with this criteria will be sent to the destination.
  final List<MatchingCriteriaResponse> matchingCriteria;
  /// The resource name of the trigger. Must be unique within the location on the project and must in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  final String name;
  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have 'eventarc.events.receiveAuditLogV1Written' permission.
  final String serviceAccount;
  /// In order to deliver messages, Eventarc may use other Google Cloud products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  final TransportResponseEventarcV1beta1 transport;
  /// The last-modified time.
  final String updateTime;

  /// Creates a new [GetTriggerEventarcV1beta1Result].
  /// [createTime] The creation time.
  /// [destination] Destination specifies where the events should be sent to.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent only on create requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. User labels attached to the triggers that can be used to group resources.
  /// [matchingCriteria] Unordered list. The criteria by which events are filtered. Only events that match with this criteria will be sent to the destination.
  /// [name] The resource name of the trigger. Must be unique within the location on the project and must in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  /// [serviceAccount] Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have 'eventarc.events.receiveAuditLogV1Written' permission.
  /// [transport] In order to deliver messages, Eventarc may use other Google Cloud products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  /// [updateTime] The last-modified time.
  const GetTriggerEventarcV1beta1Result({
    required this.createTime,
    required this.destination,
    required this.etag,
    required this.labels,
    required this.matchingCriteria,
    required this.name,
    required this.serviceAccount,
    required this.transport,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'destination': destination.toMap(),
      'etag': etag,
      'labels': labels,
      'matchingCriteria': pulumi.Input.encodeList<MatchingCriteriaResponse, Map<String, dynamic>>(matchingCriteria, (value) => value.toMap()),
      'name': name,
      'serviceAccount': serviceAccount,
      'transport': transport.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetTriggerEventarcV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetTriggerEventarcV1beta1Result(
      createTime: map['createTime'] as String,
      destination: DestinationResponseEventarcV1beta1.fromMap((map['destination']! as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      matchingCriteria: pulumi.Input.decodeList<MatchingCriteriaResponse>(map['matchingCriteria']!, (value) => MatchingCriteriaResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      serviceAccount: map['serviceAccount'] as String,
      transport: TransportResponseEventarcV1beta1.fromMap((map['transport']! as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
