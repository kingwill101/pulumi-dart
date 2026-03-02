// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_config.dart';
import 'fhir_notification_config_healthcare_v1beta1.dart';
import 'fhir_store_complex_data_type_reference_parsing_healthcare_v1beta1.dart';
import 'fhir_store_version_healthcare_v1beta1.dart';
import 'notification_config_healthcare_v1beta1.dart';
import 'search_config.dart';
import 'stream_config_healthcare_v1beta1.dart';
import 'validation_config_healthcare_v1beta1.dart';

/// {@template pulumi_healthcare_v1beta1_fhir_store_healthcare_v1beta1_args_doc}
/// The set of arguments for FhirStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_fhir_store_healthcare_v1beta1_args_doc}
class FhirStoreHealthcareV1beta1Args {
  /// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  final pulumi.Input<FhirStoreComplexDataTypeReferenceParsingHealthcareV1beta1>? complexDataTypeReferenceParsing;
  /// Optional. Specifies whether this store has consent enforcement. Not available for DSTU2 FHIR version due to absence of Consent resources.
  final pulumi.Input<ConsentConfig>? consentConfig;
  final pulumi.Input<String> datasetId;
  /// If true, overrides the default search behavior for this FHIR store to `handling=strict` which returns an error for unrecognized search parameters. If false, uses the FHIR specification default `handling=lenient` which ignores unrecognized search parameters. The handling can always be changed from the default on an individual API call by setting the HTTP header `Prefer: handling=strict` or `Prefer: handling=lenient`.
  final pulumi.Input<bool>? defaultSearchHandlingStrict;
  /// Immutable. Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store creation. The default value is false, meaning that the API enforces referential integrity and fails the requests that result in inconsistent state in the FHIR store. When this field is set to true, the API skips referential integrity checks. Consequently, operations that rely on references, such as GetPatientEverything, do not return all the results if broken references exist.
  final pulumi.Input<bool>? disableReferentialIntegrity;
  /// Immutable. Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation of FHIR store. If set to false, which is the default behavior, all write operations cause historical versions to be recorded automatically. The historical versions can be fetched through the history APIs, but cannot be updated. If set to true, no historical versions are kept. The server sends errors for attempts to read the historical versions.
  final pulumi.Input<bool>? disableResourceVersioning;
  /// Whether this FHIR store has the [updateCreate capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate). This determines if the client can use an Update operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through the Create operation and attempts to update a non-existent resource return errors. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud audit logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources.
  final pulumi.Input<bool>? enableUpdateCreate;
  /// The ID of the FHIR store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  final pulumi.Input<String>? fhirStoreId;
  /// User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Deprecated. Use `notification_configs` instead. If non-empty, publish all resource modifications of this FHIR store to this destination. The Pub/Sub message attributes contain a map with a string describing the action that has triggered the notification. For example, "action":"CreateResource".
  final pulumi.Input<NotificationConfigHealthcareV1beta1>? notificationConfig;
  /// Specifies where and whether to send notifications upon changes to a Fhir store.
  final pulumi.Input<List<FhirNotificationConfigHealthcareV1beta1>>? notificationConfigs;
  final pulumi.Input<String>? project;
  /// Configuration for how FHIR resources can be searched.
  final pulumi.Input<SearchConfig>? searchConfig;
  /// A list of streaming configs that configure the destinations of streaming export for every resource mutation in this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next resource mutation is streamed to the new location in addition to the existing ones. When a location is removed from the list, the server stops streaming to that location. Before adding a new config, you must add the required [`bigquery.dataEditor`](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor) role to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/iam/docs/service-accounts). Some lag (typically on the order of dozens of seconds) is expected before the results show up in the streaming destination.
  final pulumi.Input<List<StreamConfigHealthcareV1beta1>>? streamConfigs;
  /// Configuration for how to validate incoming FHIR resources against configured profiles.
  final pulumi.Input<ValidationConfigHealthcareV1beta1>? validationConfig;
  /// Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
  final pulumi.Input<FhirStoreVersionHealthcareV1beta1>? version;

  /// Creates a new [FhirStoreHealthcareV1beta1Args].
  /// [complexDataTypeReferenceParsing] Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  /// [consentConfig] Optional. Specifies whether this store has consent enforcement. Not available for DSTU2 FHIR version due to absence of Consent resources.
  /// [datasetId] Required.
  /// [defaultSearchHandlingStrict] If true, overrides the default search behavior for this FHIR store to `handling=strict` which returns an error for unrecognized search parameters. If false, uses the FHIR specification default `handling=lenient` which ignores unrecognized search parameters. The handling can always be changed from the default on an individual API call by setting the HTTP header `Prefer: handling=strict` or `Prefer: handling=lenient`.
  /// [disableReferentialIntegrity] Immutable. Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store creation. The default value is false, meaning that the API enforces referential integrity and fails the requests that result in inconsistent state in the FHIR store. When this field is set to true, the API skips referential integrity checks. Consequently, operations that rely on references, such as GetPatientEverything, do not return all the results if broken references exist.
  /// [disableResourceVersioning] Immutable. Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation of FHIR store. If set to false, which is the default behavior, all write operations cause historical versions to be recorded automatically. The historical versions can be fetched through the history APIs, but cannot be updated. If set to true, no historical versions are kept. The server sends errors for attempts to read the historical versions.
  /// [enableUpdateCreate] Whether this FHIR store has the [updateCreate capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate). This determines if the client can use an Update operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through the Create operation and attempts to update a non-existent resource return errors. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud audit logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources.
  /// [fhirStoreId] The ID of the FHIR store that is being created. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  /// [labels] User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [location] Optional.
  /// [notificationConfig] Deprecated. Use `notification_configs` instead. If non-empty, publish all resource modifications of this FHIR store to this destination. The Pub/Sub message attributes contain a map with a string describing the action that has triggered the notification. For example, "action":"CreateResource".
  /// [notificationConfigs] Specifies where and whether to send notifications upon changes to a Fhir store.
  /// [project] Optional.
  /// [searchConfig] Configuration for how FHIR resources can be searched.
  /// [streamConfigs] A list of streaming configs that configure the destinations of streaming export for every resource mutation in this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next resource mutation is streamed to the new location in addition to the existing ones. When a location is removed from the list, the server stops streaming to that location. Before adding a new config, you must add the required [`bigquery.dataEditor`](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor) role to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/iam/docs/service-accounts). Some lag (typically on the order of dozens of seconds) is expected before the results show up in the streaming destination.
  /// [validationConfig] Configuration for how to validate incoming FHIR resources against configured profiles.
  /// [version] Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
  FhirStoreHealthcareV1beta1Args({
    this.complexDataTypeReferenceParsing,
    this.consentConfig,
    required this.datasetId,
    this.defaultSearchHandlingStrict,
    this.disableReferentialIntegrity,
    this.disableResourceVersioning,
    this.enableUpdateCreate,
    this.fhirStoreId,
    this.labels,
    this.location,
    this.notificationConfig,
    this.notificationConfigs,
    this.project,
    this.searchConfig,
    this.streamConfigs,
    this.validationConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complexDataTypeReferenceParsing': ?pulumi.Input.mapOptionalInputValue<FhirStoreComplexDataTypeReferenceParsingHealthcareV1beta1, String>(complexDataTypeReferenceParsing, (value) => value.value),
      'consentConfig': ?pulumi.Input.mapOptionalInputValue<ConsentConfig, Map<String, dynamic>>(consentConfig, (value) => value.toMap()),
      'datasetId': datasetId,
      'defaultSearchHandlingStrict': ?defaultSearchHandlingStrict,
      'disableReferentialIntegrity': ?disableReferentialIntegrity,
      'disableResourceVersioning': ?disableResourceVersioning,
      'enableUpdateCreate': ?enableUpdateCreate,
      'fhirStoreId': ?fhirStoreId,
      'labels': ?labels,
      'location': ?location,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<NotificationConfigHealthcareV1beta1, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'notificationConfigs': ?pulumi.Input.mapOptionalInputValue<List<FhirNotificationConfigHealthcareV1beta1>, List<Map<String, dynamic>>>(notificationConfigs, (value) => pulumi.Input.encodeList<FhirNotificationConfigHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'searchConfig': ?pulumi.Input.mapOptionalInputValue<SearchConfig, Map<String, dynamic>>(searchConfig, (value) => value.toMap()),
      'streamConfigs': ?pulumi.Input.mapOptionalInputValue<List<StreamConfigHealthcareV1beta1>, List<Map<String, dynamic>>>(streamConfigs, (value) => pulumi.Input.encodeList<StreamConfigHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationConfig': ?pulumi.Input.mapOptionalInputValue<ValidationConfigHealthcareV1beta1, Map<String, dynamic>>(validationConfig, (value) => value.toMap()),
      'version': ?pulumi.Input.mapOptionalInputValue<FhirStoreVersionHealthcareV1beta1, String>(version, (value) => value.value),
    };
  }

  factory FhirStoreHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return FhirStoreHealthcareV1beta1Args(
      complexDataTypeReferenceParsing: map['complexDataTypeReferenceParsing'] == null ? null : (FhirStoreComplexDataTypeReferenceParsingHealthcareV1beta1.fromValue(map['complexDataTypeReferenceParsing'] as String)).input(),
      consentConfig: map['consentConfig'] == null ? null : (ConsentConfig.fromMap((map['consentConfig'] as Map).cast<String, dynamic>())).input(),
      datasetId: (map['datasetId'] as String).input(),
      defaultSearchHandlingStrict: map['defaultSearchHandlingStrict'] == null ? null : (map['defaultSearchHandlingStrict'] as bool).input(),
      disableReferentialIntegrity: map['disableReferentialIntegrity'] == null ? null : (map['disableReferentialIntegrity'] as bool).input(),
      disableResourceVersioning: map['disableResourceVersioning'] == null ? null : (map['disableResourceVersioning'] as bool).input(),
      enableUpdateCreate: map['enableUpdateCreate'] == null ? null : (map['enableUpdateCreate'] as bool).input(),
      fhirStoreId: map['fhirStoreId'] == null ? null : (map['fhirStoreId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      notificationConfig: map['notificationConfig'] == null ? null : (NotificationConfigHealthcareV1beta1.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>())).input(),
      notificationConfigs: map['notificationConfigs'] == null ? null : (pulumi.Input.decodeList<FhirNotificationConfigHealthcareV1beta1>(map['notificationConfigs'], (value) => FhirNotificationConfigHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      searchConfig: map['searchConfig'] == null ? null : (SearchConfig.fromMap((map['searchConfig'] as Map).cast<String, dynamic>())).input(),
      streamConfigs: map['streamConfigs'] == null ? null : (pulumi.Input.decodeList<StreamConfigHealthcareV1beta1>(map['streamConfigs'], (value) => StreamConfigHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validationConfig: map['validationConfig'] == null ? null : (ValidationConfigHealthcareV1beta1.fromMap((map['validationConfig'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (FhirStoreVersionHealthcareV1beta1.fromValue(map['version'] as String)).input(),
    );
  }
}

