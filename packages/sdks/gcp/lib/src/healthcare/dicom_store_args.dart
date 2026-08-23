// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_store_notification_config.dart';
import 'dicom_store_stream_config.dart';

/// {@template pulumi_healthcare_dicom_store_dicom_store_args_doc}
/// The set of arguments for DicomStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_dicom_store_dicom_store_args_doc}
class DicomStoreArgs {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final pulumi.Input<String> dataset;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-supplied key-value pairs used to organize DICOM stores.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
  /// conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
  /// bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be associated with a given store.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name for the DicomStore.
  /// ** Changing this property may recreate the Dicom store (removing all data) **
  final pulumi.Input<String>? name;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DicomStoreNotificationConfig>? notificationConfig;
  /// (Optional, Beta)
  /// To enable streaming to BigQuery, configure the streamConfigs object in your DICOM store.
  /// streamConfigs is an array, so you can specify multiple BigQuery destinations. You can stream metadata from a single DICOM store to up to five BigQuery tables in a BigQuery dataset.
  /// Structure is documented below.
  final pulumi.Input<List<DicomStoreStreamConfig>>? streamConfigs;

  /// Creates a new [DicomStoreArgs].
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] User-supplied key-value pairs used to organize DICOM stores.
  /// [name] The resource name for the DicomStore.
  /// [notificationConfig] A nested object resource.
  /// [streamConfigs] (Optional, Beta)
  const DicomStoreArgs({
    required this.dataset,
    this.deletionPolicy,
    this.labels,
    this.name,
    this.notificationConfig,
    this.streamConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'name': ?name,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<DicomStoreNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'streamConfigs': ?pulumi.Input.mapOptionalInputValue<List<DicomStoreStreamConfig>, List<Map<String, dynamic>>>(streamConfigs, (value) => pulumi.Input.encodeList<DicomStoreStreamConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DicomStoreArgs.fromMap(Map<String, dynamic> map) {
    return DicomStoreArgs(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationConfig: (() { final guardedValue = map['notificationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DicomStoreNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      streamConfigs: (() { final guardedValue = map['streamConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DicomStoreStreamConfig>(guardedValue, (value) => DicomStoreStreamConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
