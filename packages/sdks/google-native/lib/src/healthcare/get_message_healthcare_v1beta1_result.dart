// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parsed_data_response_healthcare_v1beta1.dart';
import 'patient_id_response_healthcare_v1beta1.dart';
import 'schematized_data_response_healthcare_v1beta1.dart';

/// Result data returned by getMessage.
class GetMessageHealthcareV1beta1Result {
  /// The datetime when the message was created. Set by the server.
  final String createTime;
  /// Raw message bytes.
  final String data;
  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Map<String, String> labels;
  /// The message type for this message. MSH-9.1.
  final String messageType;
  /// Resource name of the Message, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`. Assigned by the server.
  final String name;
  /// The parsed version of the raw message data.
  final ParsedDataResponseHealthcareV1beta1 parsedData;
  /// All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message.
  final List<PatientIdResponseHealthcareV1beta1> patientIds;
  /// The parsed version of the raw message data schematized according to this store's schemas and type definitions.
  final SchematizedDataResponseHealthcareV1beta1 schematizedData;
  /// The hospital that this message came from. MSH-4.
  final String sendFacility;
  /// The datetime the sending application sent this message. MSH-7.
  final String sendTime;

  /// Creates a new [GetMessageHealthcareV1beta1Result].
  /// [createTime] The datetime when the message was created. Set by the server.
  /// [data] Raw message bytes.
  /// [labels] User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [messageType] The message type for this message. MSH-9.1.
  /// [name] Resource name of the Message, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`. Assigned by the server.
  /// [parsedData] The parsed version of the raw message data.
  /// [patientIds] All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message.
  /// [schematizedData] The parsed version of the raw message data schematized according to this store's schemas and type definitions.
  /// [sendFacility] The hospital that this message came from. MSH-4.
  /// [sendTime] The datetime the sending application sent this message. MSH-7.
  GetMessageHealthcareV1beta1Result({
    required this.createTime,
    required this.data,
    required this.labels,
    required this.messageType,
    required this.name,
    required this.parsedData,
    required this.patientIds,
    required this.schematizedData,
    required this.sendFacility,
    required this.sendTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'data': data,
      'labels': labels,
      'messageType': messageType,
      'name': name,
      'parsedData': parsedData.toMap(),
      'patientIds': pulumi.Input.encodeList<PatientIdResponseHealthcareV1beta1, Map<String, dynamic>>(patientIds, (value) => value.toMap()),
      'schematizedData': schematizedData.toMap(),
      'sendFacility': sendFacility,
      'sendTime': sendTime,
    };
  }

  factory GetMessageHealthcareV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetMessageHealthcareV1beta1Result(
      createTime: map['createTime'] as String,
      data: map['data'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      messageType: map['messageType'] as String,
      name: map['name'] as String,
      parsedData: ParsedDataResponseHealthcareV1beta1.fromMap((map['parsedData'] as Map).cast<String, dynamic>()),
      patientIds: pulumi.Input.decodeList<PatientIdResponseHealthcareV1beta1>(map['patientIds'], (value) => PatientIdResponseHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      schematizedData: SchematizedDataResponseHealthcareV1beta1.fromMap((map['schematizedData'] as Map).cast<String, dynamic>()),
      sendFacility: map['sendFacility'] as String,
      sendTime: map['sendTime'] as String,
    );
  }
}

