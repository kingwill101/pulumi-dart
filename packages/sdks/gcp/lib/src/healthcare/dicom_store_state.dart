// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_store_notification_config.dart';
import 'dicom_store_stream_config.dart';

/// Input properties used for looking up and filtering DicomStore resources.
class DicomStoreState {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final pulumi.Input<String>? dataset;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name for the DicomStore.
  /// ** Changing this property may recreate the Dicom store (removing all data) **
  final pulumi.Input<String>? name;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DicomStoreNotificationConfig>? notificationConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The fully qualified name of this dataset
  final pulumi.Input<String>? selfLink;
  /// To enable streaming to BigQuery, configure the streamConfigs object in your DICOM store.
  /// streamConfigs is an array, so you can specify multiple BigQuery destinations. You can stream metadata from a single DICOM store to up to five BigQuery tables in a BigQuery dataset.
  /// Structure is documented below.
  final pulumi.Input<List<DicomStoreStreamConfig>>? streamConfigs;

  /// Creates a new [DicomStoreState].
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] User-supplied key-value pairs used to organize DICOM stores.
  /// [name] The resource name for the DicomStore.
  /// [notificationConfig] A nested object resource.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [selfLink] The fully qualified name of this dataset
  /// [streamConfigs] To enable streaming to BigQuery, configure the streamConfigs object in your DICOM store.
  DicomStoreState({
    pulumi.Output<String>? dataset,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<DicomStoreNotificationConfig>? notificationConfig,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? selfLink,
    pulumi.Output<List<DicomStoreStreamConfig>>? streamConfigs,
  }) :
      dataset = pulumi.Input.asOptionalInput<String>(dataset),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationConfig = pulumi.Input.asOptionalInput<DicomStoreNotificationConfig>(notificationConfig),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      streamConfigs = pulumi.Input.asOptionalInput<List<DicomStoreStreamConfig>>(streamConfigs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<DicomStoreNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'selfLink': ?selfLink,
      'streamConfigs': ?pulumi.Input.mapOptionalInputValue<List<DicomStoreStreamConfig>, List<Map<String, dynamic>>>(streamConfigs, (value) => pulumi.Input.encodeList<DicomStoreStreamConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DicomStoreState.fromMap(Map<String, dynamic> map) {
    return DicomStoreState(
      dataset: map['dataset'] == null ? null : pulumi.Output.create<String>(map['dataset'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationConfig: map['notificationConfig'] == null ? null : pulumi.Output.create<DicomStoreNotificationConfig>(DicomStoreNotificationConfig.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>())),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      streamConfigs: map['streamConfigs'] == null ? null : pulumi.Output.create<List<DicomStoreStreamConfig>>(pulumi.Input.decodeList<DicomStoreStreamConfig>(map['streamConfigs'], (value) => DicomStoreStreamConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

