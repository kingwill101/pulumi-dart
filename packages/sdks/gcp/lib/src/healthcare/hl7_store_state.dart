// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_store_notification_config.dart';
import 'hl7_store_notification_configs.dart';
import 'hl7_store_parser_config.dart';

/// Input properties used for looking up and filtering Hl7Store resources.
class Hl7StoreState {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final pulumi.Input<String>? dataset;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// User-supplied key-value pairs used to organize HL7v2 stores.
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
  /// The resource name for the Hl7V2Store.
  /// ** Changing this property may recreate the Hl7v2 store (removing all data) **
  final pulumi.Input<String>? name;
  /// (Optional, Deprecated)
  /// A nested object resource.
  /// Structure is documented below.
  ///
  /// > **Warning:** `notification_config` is deprecated and will be removed in a future major release. Use `notification_configs` instead.
  final pulumi.Input<Hl7StoreNotificationConfig>? notificationConfig;
  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a
  /// message (both Ingest & Create) on the corresponding notification destination. Only the message name
  /// is sent as part of the notification. Supplied by the client.
  /// Structure is documented below.
  final pulumi.Input<List<Hl7StoreNotificationConfigs>>? notificationConfigs;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<Hl7StoreParserConfig>? parserConfig;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Determines whether duplicate messages are allowed.
  final pulumi.Input<bool>? rejectDuplicateMessage;
  /// The fully qualified name of this dataset
  final pulumi.Input<String>? selfLink;

  /// Creates a new [Hl7StoreState].
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] User-supplied key-value pairs used to organize HL7v2 stores.
  /// [name] The resource name for the Hl7V2Store.
  /// [notificationConfig] (Optional, Deprecated)
  /// [notificationConfigs] A list of notification configs. Each configuration uses a filter to determine whether to publish a
  /// [parserConfig] A nested object resource.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [rejectDuplicateMessage] Determines whether duplicate messages are allowed.
  /// [selfLink] The fully qualified name of this dataset
  Hl7StoreState({
    this.dataset,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.notificationConfig,
    this.notificationConfigs,
    this.parserConfig,
    this.pulumiLabels,
    this.rejectDuplicateMessage,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<Hl7StoreNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'notificationConfigs': ?pulumi.Input.mapOptionalInputValue<List<Hl7StoreNotificationConfigs>, List<Map<String, dynamic>>>(notificationConfigs, (value) => pulumi.Input.encodeList<Hl7StoreNotificationConfigs, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parserConfig': ?pulumi.Input.mapOptionalInputValue<Hl7StoreParserConfig, Map<String, dynamic>>(parserConfig, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
      'rejectDuplicateMessage': ?rejectDuplicateMessage,
      'selfLink': ?selfLink,
    };
  }

  factory Hl7StoreState.fromMap(Map<String, dynamic> map) {
    return Hl7StoreState(
      dataset: map['dataset'] == null ? null : (map['dataset']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notificationConfig: map['notificationConfig'] == null ? null : (Hl7StoreNotificationConfig.fromMap((map['notificationConfig']! as Map).cast<String, dynamic>())).input(),
      notificationConfigs: map['notificationConfigs'] == null ? null : (pulumi.Input.decodeList<Hl7StoreNotificationConfigs>(map['notificationConfigs']!, (value) => Hl7StoreNotificationConfigs.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parserConfig: map['parserConfig'] == null ? null : (Hl7StoreParserConfig.fromMap((map['parserConfig']! as Map).cast<String, dynamic>())).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      rejectDuplicateMessage: map['rejectDuplicateMessage'] == null ? null : (map['rejectDuplicateMessage']! as bool).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
    );
  }
}

