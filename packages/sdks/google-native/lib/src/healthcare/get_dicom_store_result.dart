// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_healthcare_v1_dicom_stream_config_response.dart';
import 'notification_config_response.dart';

/// Result data returned by getDicomStore.
class GetDicomStoreResult {
  /// User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Map<String, String> labels;
  /// Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  final String name;
  /// Notification destination for new DICOM instances. Supplied by the client.
  final NotificationConfigResponse notificationConfig;
  /// Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  final List<GoogleCloudHealthcareV1DicomStreamConfigResponse> streamConfigs;

  /// Creates a new [GetDicomStoreResult].
  /// [labels] User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [name] Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// [notificationConfig] Notification destination for new DICOM instances. Supplied by the client.
  /// [streamConfigs] Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  GetDicomStoreResult({
    required this.labels,
    required this.name,
    required this.notificationConfig,
    required this.streamConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': labels,
      'name': name,
      'notificationConfig': notificationConfig.toMap(),
      'streamConfigs': pulumi.Input.encodeList<GoogleCloudHealthcareV1DicomStreamConfigResponse, Map<String, dynamic>>(streamConfigs, (value) => value.toMap()),
    };
  }

  factory GetDicomStoreResult.fromMap(Map<String, dynamic> map) {
    return GetDicomStoreResult(
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      notificationConfig: NotificationConfigResponse.fromMap((map['notificationConfig']! as Map).cast<String, dynamic>()),
      streamConfigs: pulumi.Input.decodeList<GoogleCloudHealthcareV1DicomStreamConfigResponse>(map['streamConfigs']!, (value) => GoogleCloudHealthcareV1DicomStreamConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

