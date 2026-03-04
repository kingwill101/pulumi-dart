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
      'patientIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<PatientId>,
            List<Map<String, dynamic>>
          >(
            patientIds,
            (value) => pulumi.Input.encodeList<PatientId, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'project': ?project,
      'schematizedData':
          ?pulumi.Input.mapOptionalInputValue<
            SchematizedData,
            Map<String, dynamic>
          >(schematizedData, (value) => value.toMap()),
      'sendFacility': ?sendFacility,
      'sendTime': ?sendTime,
    };
  }

  factory MessageArgs.fromMap(Map<String, dynamic> map) {
    return MessageArgs(
      data: (() {
        final guardedValue = map['data'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      hl7V2StoreId: pulumi.Input.fromValue(map['hl7V2StoreId'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messageType: (() {
        final guardedValue = map['messageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      patientIds: (() {
        final guardedValue = map['patientIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PatientId>(
            guardedValue,
            (value) =>
                PatientId.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schematizedData: (() {
        final guardedValue = map['schematizedData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SchematizedData.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sendFacility: (() {
        final guardedValue = map['sendFacility'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sendTime: (() {
        final guardedValue = map['sendTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
