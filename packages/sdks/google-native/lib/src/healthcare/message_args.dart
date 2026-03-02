// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patient_id.dart';
import 'schematized_data.dart';

/// {@template pulumi_healthcare_v1_message_args_doc}
/// The set of arguments for Message.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_message_args_doc}
class MessageArgs {
  /// Raw message bytes.
  final pulumi.Input<String>? data;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> hl7V2StoreId;
  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The message type for this message. MSH-9.1.
  final pulumi.Input<String>? messageType;
  /// Resource name of the Message, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`. Assigned by the server.
  final pulumi.Input<String>? name;
  /// All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message.
  final pulumi.Input<List<PatientId>>? patientIds;
  final pulumi.Input<String>? project;
  /// The parsed version of the raw message data schematized according to this store's schemas and type definitions.
  final pulumi.Input<SchematizedData>? schematizedData;
  /// The hospital that this message came from. MSH-4.
  final pulumi.Input<String>? sendFacility;
  /// The datetime the sending application sent this message. MSH-7.
  final pulumi.Input<String>? sendTime;

  /// Creates a new [MessageArgs].
  /// [data] Raw message bytes.
  /// [datasetId] Required.
  /// [hl7V2StoreId] Required.
  /// [labels] User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [location] Optional.
  /// [messageType] The message type for this message. MSH-9.1.
  /// [name] Resource name of the Message, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`. Assigned by the server.
  /// [patientIds] All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this message.
  /// [project] Optional.
  /// [schematizedData] The parsed version of the raw message data schematized according to this store's schemas and type definitions.
  /// [sendFacility] The hospital that this message came from. MSH-4.
  /// [sendTime] The datetime the sending application sent this message. MSH-7.
  MessageArgs({
    this.data,
    required this.datasetId,
    required this.hl7V2StoreId,
    this.labels,
    this.location,
    this.messageType,
    this.name,
    this.patientIds,
    this.project,
    this.schematizedData,
    this.sendFacility,
    this.sendTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'datasetId': datasetId,
      'hl7V2StoreId': hl7V2StoreId,
      'labels': ?labels,
      'location': ?location,
      'messageType': ?messageType,
      'name': ?name,
      'patientIds': ?pulumi.Input.mapOptionalInputValue<List<PatientId>, List<Map<String, dynamic>>>(patientIds, (value) => pulumi.Input.encodeList<PatientId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'schematizedData': ?pulumi.Input.mapOptionalInputValue<SchematizedData, Map<String, dynamic>>(schematizedData, (value) => value.toMap()),
      'sendFacility': ?sendFacility,
      'sendTime': ?sendTime,
    };
  }

  factory MessageArgs.fromMap(Map<String, dynamic> map) {
    return MessageArgs(
      data: map['data'] == null ? null : (map['data']! as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      hl7V2StoreId: (map['hl7V2StoreId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      messageType: map['messageType'] == null ? null : (map['messageType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      patientIds: map['patientIds'] == null ? null : (pulumi.Input.decodeList<PatientId>(map['patientIds']!, (value) => PatientId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      schematizedData: map['schematizedData'] == null ? null : (SchematizedData.fromMap((map['schematizedData']! as Map).cast<String, dynamic>())).input(),
      sendFacility: map['sendFacility'] == null ? null : (map['sendFacility']! as String).input(),
      sendTime: map['sendTime'] == null ? null : (map['sendTime']! as String).input(),
    );
  }
}

