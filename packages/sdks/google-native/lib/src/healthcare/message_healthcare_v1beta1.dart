import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_healthcare_v1beta1_args.dart';
import 'parsed_data_response_healthcare_v1beta1.dart';
import 'patient_id_response_healthcare_v1beta1.dart';
import 'schematized_data_response_healthcare_v1beta1.dart';

/// Parses and stores an HL7v2 message. This method triggers an asynchronous notification to any Pub/Sub topic configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches the message. If an MLLP adapter is configured to listen to a Pub/Sub topic, the adapter transmits the message when a notification is received.
class MessageHealthcareV1beta1 extends pulumi.CustomResource {
  /// The datetime when the message was created. Set by the server.
  late final pulumi.Output<String> createTime;
  /// Raw message bytes.
  late final pulumi.Output<String> data;
  late final pulumi.Output<String> datasetId;
  late final pulumi.Output<String> hl7V2StoreId;
  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The message type for this message. MSH-9.1.
  late final pulumi.Output<String> messageType;
  /// Resource name of the Message, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`. Assigned by the server.
  late final pulumi.Output<String> name;
  /// The parsed version of the raw message data.
  late final pulumi.Output<ParsedDataResponseHealthcareV1beta1> parsedData;
  /// All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message.
  late final pulumi.Output<List<PatientIdResponseHealthcareV1beta1>> patientIds;
  late final pulumi.Output<String> project;
  /// The parsed version of the raw message data schematized according to this store's schemas and type definitions.
  late final pulumi.Output<SchematizedDataResponseHealthcareV1beta1> schematizedData;
  /// The hospital that this message came from. MSH-4.
  late final pulumi.Output<String> sendFacility;
  /// The datetime the sending application sent this message. MSH-7.
  late final pulumi.Output<String> sendTime;

  /// Creates a new [MessageHealthcareV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MessageHealthcareV1beta1]. {@macro pulumi_healthcare_v1beta1_message_healthcare_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MessageHealthcareV1beta1(
    String name, {
    MessageHealthcareV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1beta1:Message',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.data = registerOutput<String>('data');
    this.datasetId = registerOutput<String>('datasetId');
    this.hl7V2StoreId = registerOutput<String>('hl7V2StoreId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.messageType = registerOutput<String>('messageType');
    this.name = registerOutput<String>('name');
    this.parsedData = registerOutput<ParsedDataResponseHealthcareV1beta1>('parsedData');
    this.patientIds = registerOutput<List<PatientIdResponseHealthcareV1beta1>>('patientIds');
    this.project = registerOutput<String>('project');
    this.schematizedData = registerOutput<SchematizedDataResponseHealthcareV1beta1>('schematizedData');
    this.sendFacility = registerOutput<String>('sendFacility');
    this.sendTime = registerOutput<String>('sendTime');
  }
}
