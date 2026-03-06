// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_config_response.dart';
import 'fhir_notification_config_response_healthcare_v1beta1.dart';
import 'notification_config_response_healthcare_v1beta1.dart';
import 'search_config_response.dart';
import 'stream_config_response_healthcare_v1beta1.dart';
import 'validation_config_response_healthcare_v1beta1.dart';

/// Result data returned by getFhirStore.
class GetFhirStoreHealthcareV1beta1Result {
  /// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  final String complexDataTypeReferenceParsing;
  /// Optional. Specifies whether this store has consent enforcement. Not available for DSTU2 FHIR version due to absence of Consent resources.
  final ConsentConfigResponse consentConfig;
  /// If true, overrides the default search behavior for this FHIR store to `handling=strict` which returns an error for unrecognized search parameters. If false, uses the FHIR specification default `handling=lenient` which ignores unrecognized search parameters. The handling can always be changed from the default on an individual API call by setting the HTTP header `Prefer: handling=strict` or `Prefer: handling=lenient`.
  final bool defaultSearchHandlingStrict;
  /// Immutable. Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store creation. The default value is false, meaning that the API enforces referential integrity and fails the requests that result in inconsistent state in the FHIR store. When this field is set to true, the API skips referential integrity checks. Consequently, operations that rely on references, such as GetPatientEverything, do not return all the results if broken references exist.
  final bool disableReferentialIntegrity;
  /// Immutable. Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation of FHIR store. If set to false, which is the default behavior, all write operations cause historical versions to be recorded automatically. The historical versions can be fetched through the history APIs, but cannot be updated. If set to true, no historical versions are kept. The server sends errors for attempts to read the historical versions.
  final bool disableResourceVersioning;
  /// Whether this FHIR store has the [updateCreate capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate). This determines if the client can use an Update operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through the Create operation and attempts to update a non-existent resource return errors. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud audit logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources.
  final bool enableUpdateCreate;
  /// User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Map<String, String> labels;
  /// Resource name of the FHIR store, of the form `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  final String name;
  /// Deprecated. Use `notification_configs` instead. If non-empty, publish all resource modifications of this FHIR store to this destination. The Pub/Sub message attributes contain a map with a string describing the action that has triggered the notification. For example, "action":"CreateResource".
  final NotificationConfigResponseHealthcareV1beta1 notificationConfig;
  /// Specifies where and whether to send notifications upon changes to a Fhir store.
  final List<FhirNotificationConfigResponseHealthcareV1beta1> notificationConfigs;
  /// Configuration for how FHIR resources can be searched.
  final SearchConfigResponse searchConfig;
  /// A list of streaming configs that configure the destinations of streaming export for every resource mutation in this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next resource mutation is streamed to the new location in addition to the existing ones. When a location is removed from the list, the server stops streaming to that location. Before adding a new config, you must add the required [`bigquery.dataEditor`](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor) role to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/iam/docs/service-accounts). Some lag (typically on the order of dozens of seconds) is expected before the results show up in the streaming destination.
  final List<StreamConfigResponseHealthcareV1beta1> streamConfigs;
  /// Configuration for how to validate incoming FHIR resources against configured profiles.
  final ValidationConfigResponseHealthcareV1beta1 validationConfig;
  /// Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
  final String version;

  /// Creates a new [GetFhirStoreHealthcareV1beta1Result].
  /// [complexDataTypeReferenceParsing] Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  /// [consentConfig] Optional. Specifies whether this store has consent enforcement. Not available for DSTU2 FHIR version due to absence of Consent resources.
  /// [defaultSearchHandlingStrict] If true, overrides the default search behavior for this FHIR store to `handling=strict` which returns an error for unrecognized search parameters. If false, uses the FHIR specification default `handling=lenient` which ignores unrecognized search parameters. The handling can always be changed from the default on an individual API call by setting the HTTP header `Prefer: handling=strict` or `Prefer: handling=lenient`.
  /// [disableReferentialIntegrity] Immutable. Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store creation. The default value is false, meaning that the API enforces referential integrity and fails the requests that result in inconsistent state in the FHIR store. When this field is set to true, the API skips referential integrity checks. Consequently, operations that rely on references, such as GetPatientEverything, do not return all the results if broken references exist.
  /// [disableResourceVersioning] Immutable. Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation of FHIR store. If set to false, which is the default behavior, all write operations cause historical versions to be recorded automatically. The historical versions can be fetched through the history APIs, but cannot be updated. If set to true, no historical versions are kept. The server sends errors for attempts to read the historical versions.
  /// [enableUpdateCreate] Whether this FHIR store has the [updateCreate capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate). This determines if the client can use an Update operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through the Create operation and attempts to update a non-existent resource return errors. It is strongly advised not to include or encode any sensitive data such as patient identifiers in client-specified resource IDs. Those IDs are part of the FHIR resource path recorded in Cloud audit logs and Pub/Sub notifications. Those IDs can also be contained in reference fields within other resources.
  /// [labels] User-supplied key-value pairs used to organize FHIR stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  /// [name] Resource name of the FHIR store, of the form `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// [notificationConfig] Deprecated. Use `notification_configs` instead. If non-empty, publish all resource modifications of this FHIR store to this destination. The Pub/Sub message attributes contain a map with a string describing the action that has triggered the notification. For example, "action":"CreateResource".
  /// [notificationConfigs] Specifies where and whether to send notifications upon changes to a Fhir store.
  /// [searchConfig] Configuration for how FHIR resources can be searched.
  /// [streamConfigs] A list of streaming configs that configure the destinations of streaming export for every resource mutation in this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next resource mutation is streamed to the new location in addition to the existing ones. When a location is removed from the list, the server stops streaming to that location. Before adding a new config, you must add the required [`bigquery.dataEditor`](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor) role to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/iam/docs/service-accounts). Some lag (typically on the order of dozens of seconds) is expected before the results show up in the streaming destination.
  /// [validationConfig] Configuration for how to validate incoming FHIR resources against configured profiles.
  /// [version] Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
  const GetFhirStoreHealthcareV1beta1Result({
    required this.complexDataTypeReferenceParsing,
    required this.consentConfig,
    required this.defaultSearchHandlingStrict,
    required this.disableReferentialIntegrity,
    required this.disableResourceVersioning,
    required this.enableUpdateCreate,
    required this.labels,
    required this.name,
    required this.notificationConfig,
    required this.notificationConfigs,
    required this.searchConfig,
    required this.streamConfigs,
    required this.validationConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complexDataTypeReferenceParsing': complexDataTypeReferenceParsing,
      'consentConfig': consentConfig.toMap(),
      'defaultSearchHandlingStrict': defaultSearchHandlingStrict,
      'disableReferentialIntegrity': disableReferentialIntegrity,
      'disableResourceVersioning': disableResourceVersioning,
      'enableUpdateCreate': enableUpdateCreate,
      'labels': labels,
      'name': name,
      'notificationConfig': notificationConfig.toMap(),
      'notificationConfigs': pulumi.Input.encodeList<FhirNotificationConfigResponseHealthcareV1beta1, Map<String, dynamic>>(notificationConfigs, (value) => value.toMap()),
      'searchConfig': searchConfig.toMap(),
      'streamConfigs': pulumi.Input.encodeList<StreamConfigResponseHealthcareV1beta1, Map<String, dynamic>>(streamConfigs, (value) => value.toMap()),
      'validationConfig': validationConfig.toMap(),
      'version': version,
    };
  }

  factory GetFhirStoreHealthcareV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetFhirStoreHealthcareV1beta1Result(
      complexDataTypeReferenceParsing: map['complexDataTypeReferenceParsing'] as String,
      consentConfig: ConsentConfigResponse.fromMap((map['consentConfig']! as Map).cast<String, dynamic>()),
      defaultSearchHandlingStrict: map['defaultSearchHandlingStrict'] as bool,
      disableReferentialIntegrity: map['disableReferentialIntegrity'] as bool,
      disableResourceVersioning: map['disableResourceVersioning'] as bool,
      enableUpdateCreate: map['enableUpdateCreate'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      notificationConfig: NotificationConfigResponseHealthcareV1beta1.fromMap((map['notificationConfig']! as Map).cast<String, dynamic>()),
      notificationConfigs: pulumi.Input.decodeList<FhirNotificationConfigResponseHealthcareV1beta1>(map['notificationConfigs']!, (value) => FhirNotificationConfigResponseHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      searchConfig: SearchConfigResponse.fromMap((map['searchConfig']! as Map).cast<String, dynamic>()),
      streamConfigs: pulumi.Input.decodeList<StreamConfigResponseHealthcareV1beta1>(map['streamConfigs']!, (value) => StreamConfigResponseHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      validationConfig: ValidationConfigResponseHealthcareV1beta1.fromMap((map['validationConfig']! as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}

