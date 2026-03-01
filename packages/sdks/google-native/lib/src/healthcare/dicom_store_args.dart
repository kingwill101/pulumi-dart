// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_healthcare_v1_dicom_stream_config.dart';
import 'notification_config.dart';

/// {@template pulumi_healthcare_v1_dicom_store_args_doc}
/// The set of arguments for DicomStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_dicom_store_args_doc}
class DicomStoreArgs {
  final pulumi.Input<String> datasetId;
  /// The ID of the DICOM store that is being created. Any string value up to 256 characters in length.
  final pulumi.Input<String>? dicomStoreId;
  /// User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  final pulumi.Input<String>? name;
  /// Notification destination for new DICOM instances. Supplied by the client.
  final pulumi.Input<NotificationConfig>? notificationConfig;
  final pulumi.Input<String>? project;
  /// Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  final pulumi.Input<List<GoogleCloudHealthcareV1DicomStreamConfig>>? streamConfigs;

  /// Creates a new [DicomStoreArgs].
  /// [datasetId] Required.
  /// [dicomStoreId] The ID of the DICOM store that is being created. Any string value up to 256 characters in length.
  /// [labels] User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [location] Optional.
  /// [name] Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// [notificationConfig] Notification destination for new DICOM instances. Supplied by the client.
  /// [project] Optional.
  /// [streamConfigs] Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  DicomStoreArgs({
    required pulumi.Output<String> datasetId,
    pulumi.Output<String>? dicomStoreId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<NotificationConfig>? notificationConfig,
    pulumi.Output<String>? project,
    pulumi.Output<List<GoogleCloudHealthcareV1DicomStreamConfig>>? streamConfigs,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      dicomStoreId = pulumi.Input.asOptionalInput<String>(dicomStoreId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationConfig = pulumi.Input.asOptionalInput<NotificationConfig>(notificationConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      streamConfigs = pulumi.Input.asOptionalInput<List<GoogleCloudHealthcareV1DicomStreamConfig>>(streamConfigs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'dicomStoreId': ?dicomStoreId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<NotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'project': ?project,
      'streamConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudHealthcareV1DicomStreamConfig>, List<Map<String, dynamic>>>(streamConfigs, (value) => pulumi.Input.encodeList<GoogleCloudHealthcareV1DicomStreamConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DicomStoreArgs.fromMap(Map<String, dynamic> map) {
    return DicomStoreArgs(
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      dicomStoreId: map['dicomStoreId'] == null ? null : pulumi.Output.create<String>(map['dicomStoreId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationConfig: map['notificationConfig'] == null ? null : pulumi.Output.create<NotificationConfig>(NotificationConfig.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      streamConfigs: map['streamConfigs'] == null ? null : pulumi.Output.create<List<GoogleCloudHealthcareV1DicomStreamConfig>>(pulumi.Input.decodeList<GoogleCloudHealthcareV1DicomStreamConfig>(map['streamConfigs'], (value) => GoogleCloudHealthcareV1DicomStreamConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

