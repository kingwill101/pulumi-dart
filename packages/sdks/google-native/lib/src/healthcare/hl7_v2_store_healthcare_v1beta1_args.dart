// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_v2_notification_config_healthcare_v1beta1.dart';
import 'notification_config_healthcare_v1beta1.dart';
import 'parser_config_healthcare_v1beta1.dart';

/// {@template pulumi_healthcare_v1beta1_hl7_v2_store_healthcare_v1beta1_args_doc}
/// The set of arguments for Hl7V2Store.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_hl7_v2_store_healthcare_v1beta1_args_doc}
class Hl7V2StoreHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;

  /// The ID of the HL7v2 store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  final pulumi.Input<String>? hl7V2StoreId;

  /// User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  final pulumi.Input<String>? name;

  /// The notification destination all messages (both Ingest & Create) are published on. Only the message name is sent as part of the notification. If this is unset, no notifications are sent. Supplied by the client.
  final pulumi.Input<NotificationConfigHealthcareV1beta1>? notificationConfig;

  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.
  final pulumi.Input<List<Hl7V2NotificationConfigHealthcareV1beta1>>?
  notificationConfigs;

  /// The configuration for the parser. It determines how the server parses the messages.
  final pulumi.Input<ParserConfigHealthcareV1beta1>? parserConfig;
  final pulumi.Input<String>? project;

  /// Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.
  final pulumi.Input<bool>? rejectDuplicateMessage;

  /// Creates a new [Hl7V2StoreHealthcareV1beta1Args].
  /// [datasetId] Required.
  /// [hl7V2StoreId] The ID of the HL7v2 store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  /// [labels] User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [location] Optional.
  /// [name] Resource name of the HL7v2 store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  /// [notificationConfig] The notification destination all messages (both Ingest & Create) are published on. Only the message name is sent as part of the notification. If this is unset, no notifications are sent. Supplied by the client.
  /// [notificationConfigs] A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.
  /// [parserConfig] The configuration for the parser. It determines how the server parses the messages.
  /// [project] Optional.
  /// [rejectDuplicateMessage] Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.
  Hl7V2StoreHealthcareV1beta1Args({
    required this.datasetId,
    this.hl7V2StoreId,
    this.labels,
    this.location,
    this.name,
    this.notificationConfig,
    this.notificationConfigs,
    this.parserConfig,
    this.project,
    this.rejectDuplicateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'hl7V2StoreId': ?hl7V2StoreId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'notificationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NotificationConfigHealthcareV1beta1,
            Map<String, dynamic>
          >(notificationConfig, (value) => value.toMap()),
      'notificationConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<Hl7V2NotificationConfigHealthcareV1beta1>,
            List<Map<String, dynamic>>
          >(
            notificationConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  Hl7V2NotificationConfigHealthcareV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'parserConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ParserConfigHealthcareV1beta1,
            Map<String, dynamic>
          >(parserConfig, (value) => value.toMap()),
      'project': ?project,
      'rejectDuplicateMessage': ?rejectDuplicateMessage,
    };
  }

  factory Hl7V2StoreHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return Hl7V2StoreHealthcareV1beta1Args(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      hl7V2StoreId: (() {
        final guardedValue = map['hl7V2StoreId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationConfig: (() {
        final guardedValue = map['notificationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NotificationConfigHealthcareV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      notificationConfigs: (() {
        final guardedValue = map['notificationConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Hl7V2NotificationConfigHealthcareV1beta1>(
            guardedValue,
            (value) => Hl7V2NotificationConfigHealthcareV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      parserConfig: (() {
        final guardedValue = map['parserConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ParserConfigHealthcareV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rejectDuplicateMessage: (() {
        final guardedValue = map['rejectDuplicateMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
