// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_store_notification_config.dart';
import 'hl7_store_notification_configs.dart';
import 'hl7_store_parser_config.dart';

/// {@template pulumi_healthcare_hl7_store_hl7_store_args_doc}
/// The set of arguments for Hl7Store.
/// {@endtemplate}
/// {@macro pulumi_healthcare_hl7_store_hl7_store_args_doc}
class Hl7StoreArgs {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final pulumi.Input<String> dataset;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The resource name for the Hl7V2Store.
  /// ** Changing this property may recreate the Hl7v2 store (removing all data) **
  final pulumi.Input<String?>? name;
  /// (Optional, Deprecated)
  /// A nested object resource.
  /// Structure is documented below.
  ///
  /// &gt; **Warning:** `notificationConfig` is deprecated and will be removed in a future major release. Use `notificationConfigs` instead.
  final pulumi.Input<Hl7StoreNotificationConfig?>? notificationConfig;
  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a
  /// message (both Ingest & Create) on the corresponding notification destination. Only the message name
  /// is sent as part of the notification. Supplied by the client.
  /// Structure is documented below.
  final pulumi.Input<List<Hl7StoreNotificationConfigs>?>? notificationConfigs;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<Hl7StoreParserConfig?>? parserConfig;
  /// Determines whether duplicate messages are allowed.
  final pulumi.Input<bool?>? rejectDuplicateMessage;

  /// Creates a new [Hl7StoreArgs].
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] User-supplied key-value pairs used to organize HL7v2 stores.
  /// [name] The resource name for the Hl7V2Store.
  /// [notificationConfig] (Optional, Deprecated)
  /// [notificationConfigs] A list of notification configs. Each configuration uses a filter to determine whether to publish a
  /// [parserConfig] A nested object resource.
  /// [rejectDuplicateMessage] Determines whether duplicate messages are allowed.
  const Hl7StoreArgs({
    required this.dataset,
    this.deletionPolicy,
    this.labels,
    this.name,
    this.notificationConfig,
    this.notificationConfigs,
    this.parserConfig,
    this.rejectDuplicateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'name': ?name,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<Hl7StoreNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'notificationConfigs': ?pulumi.Input.mapOptionalInputValue<List<Hl7StoreNotificationConfigs>, List<Map<String, dynamic>>>(notificationConfigs, (value) => pulumi.Input.encodeList<Hl7StoreNotificationConfigs, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parserConfig': ?pulumi.Input.mapOptionalInputValue<Hl7StoreParserConfig, Map<String, dynamic>>(parserConfig, (value) => value.toMap()),
      'rejectDuplicateMessage': ?rejectDuplicateMessage,
    };
  }

  factory Hl7StoreArgs.fromMap(Map<String, dynamic> map) {
    return Hl7StoreArgs(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationConfig: (() { final guardedValue = map['notificationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Hl7StoreNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationConfigs: (() { final guardedValue = map['notificationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Hl7StoreNotificationConfigs>(guardedValue, (value) => Hl7StoreNotificationConfigs.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parserConfig: (() { final guardedValue = map['parserConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Hl7StoreParserConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rejectDuplicateMessage: (() { final guardedValue = map['rejectDuplicateMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
