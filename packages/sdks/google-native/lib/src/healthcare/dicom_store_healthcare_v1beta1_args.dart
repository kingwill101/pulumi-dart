// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_healthcare_v1beta1_dicom_stream_config.dart';
import 'notification_config_healthcare_v1beta1.dart';

/// {@template pulumi_healthcare_v1beta1_dicom_store_healthcare_v1beta1_args_doc}
/// The set of arguments for DicomStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_dicom_store_healthcare_v1beta1_args_doc}
class DicomStoreHealthcareV1beta1Args {
  final pulumi.Input<String> datasetId;
  /// The ID of the DICOM store that is being created. Any string value up to 256 characters in length.
  final pulumi.Input<String>? dicomStoreId;
  /// User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  final pulumi.Input<String>? name;
  /// Notification destination for new DICOM instances. Supplied by the client.
  final pulumi.Input<NotificationConfigHealthcareV1beta1>? notificationConfig;
  final pulumi.Input<String>? project;
  /// Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  final pulumi.Input<List<GoogleCloudHealthcareV1beta1DicomStreamConfig>>? streamConfigs;

  /// Creates a new [DicomStoreHealthcareV1beta1Args].
  /// [datasetId] Required.
  /// [dicomStoreId] The ID of the DICOM store that is being created. Any string value up to 256 characters in length.
  /// [labels] User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [location] Optional.
  /// [name] Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// [notificationConfig] Notification destination for new DICOM instances. Supplied by the client.
  /// [project] Optional.
  /// [streamConfigs] Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  DicomStoreHealthcareV1beta1Args({
    required this.datasetId,
    this.dicomStoreId,
    this.labels,
    this.location,
    this.name,
    this.notificationConfig,
    this.project,
    this.streamConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'dicomStoreId': ?dicomStoreId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<NotificationConfigHealthcareV1beta1, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'project': ?project,
      'streamConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudHealthcareV1beta1DicomStreamConfig>, List<Map<String, dynamic>>>(streamConfigs, (value) => pulumi.Input.encodeList<GoogleCloudHealthcareV1beta1DicomStreamConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DicomStoreHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return DicomStoreHealthcareV1beta1Args(
      datasetId: (map['datasetId'] as String).input(),
      dicomStoreId: map['dicomStoreId'] == null ? null : (map['dicomStoreId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notificationConfig: map['notificationConfig'] == null ? null : (NotificationConfigHealthcareV1beta1.fromMap((map['notificationConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      streamConfigs: map['streamConfigs'] == null ? null : (pulumi.Input.decodeList<GoogleCloudHealthcareV1beta1DicomStreamConfig>(map['streamConfigs']!, (value) => GoogleCloudHealthcareV1beta1DicomStreamConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

