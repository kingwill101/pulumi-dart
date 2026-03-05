import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_response_eventarc_v1beta1.dart';
import 'transport_response_eventarc_v1beta1.dart';
import 'trigger_eventarc_v1beta1_args.dart';

/// Create a new trigger in a particular project and location.
class TriggerEventarcV1beta1 extends pulumi.CustomResource {
  /// The creation time.
  late final pulumi.Output<String> createTime;

  /// Destination specifies where the events should be sent to.
  late final pulumi.Output<DestinationResponseEventarcV1beta1> destination;

  /// This checksum is computed by the server based on the value of other fields, and may be sent only on create requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Optional. User labels attached to the triggers that can be used to group resources.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Unordered list. The criteria by which events are filtered. Only events that match with this criteria will be sent to the destination.
  late final pulumi.Output<List<Map<String, dynamic>>> matchingCriteria;

  /// The resource name of the trigger. Must be unique within the location on the project and must in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. In order to create Audit Log triggers, the service account should also have 'eventarc.events.receiveAuditLogV1Written' permission.
  late final pulumi.Output<String> serviceAccount;

  /// In order to deliver messages, Eventarc may use other Google Cloud products as transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  late final pulumi.Output<TransportResponseEventarcV1beta1> transport;

  /// Required. The user-provided ID to be assigned to the trigger.
  late final pulumi.Output<String> triggerId;

  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TriggerEventarcV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TriggerEventarcV1beta1]. {@macro pulumi_eventarc_v1beta1_trigger_eventarc_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TriggerEventarcV1beta1(
    String name, {
    TriggerEventarcV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:eventarc/v1beta1:Trigger',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    destination = registerOutput<DestinationResponseEventarcV1beta1>(
      'destination',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DestinationResponseEventarcV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    matchingCriteria = registerOutput<List<Map<String, dynamic>>>(
      'matchingCriteria',
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceAccount = registerOutput<String>('serviceAccount');
    transport = registerOutput<TransportResponseEventarcV1beta1>(
      'transport',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TransportResponseEventarcV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    triggerId = registerOutput<String>('triggerId');
    updateTime = registerOutput<String>('updateTime');
  }
}
