// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_store_consent_config.dart';
import 'fhir_store_notification_config.dart';
import 'fhir_store_stream_config.dart';
import 'fhir_store_validation_config.dart';

/// Input properties used for looking up and filtering FhirStore resources.
class FhirStoreState {
  /// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED by default after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  /// Possible values are: `COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED`, `DISABLED`, `ENABLED`.
  final pulumi.Input<String>? complexDataTypeReferenceParsing;
  /// Specifies whether this store has consent enforcement. Not available for DSTU2 FHIR version due to absence of Consent resources. Not supported for R5 FHIR version.
  /// Structure is documented below.
  final pulumi.Input<FhirStoreConsentConfig>? consentConfig;
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final pulumi.Input<String>? dataset;
  /// If true, overrides the default search behavior for this FHIR store to handling=strict which returns an error for unrecognized search parameters.
  /// If false, uses the FHIR specification default handling=lenient which ignores unrecognized search parameters.
  /// The handling can always be changed from the default on an individual API call by setting the HTTP header Prefer: handling=strict or Prefer: handling=lenient.
  final pulumi.Input<bool>? defaultSearchHandlingStrict;
  /// Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store
  /// creation. The default value is false, meaning that the API will enforce referential integrity and fail the
  /// requests that will result in inconsistent state in the FHIR store. When this field is set to true, the API
  /// will skip referential integrity check. Consequently, operations that rely on references, such as
  /// Patient.get$everything, will not return all the results if broken references exist.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  final pulumi.Input<bool>? disableReferentialIntegrity;
  /// Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation
  /// of FHIR store. If set to false, which is the default behavior, all write operations will cause historical
  /// versions to be recorded automatically. The historical versions can be fetched through the history APIs, but
  /// cannot be updated. If set to true, no historical versions will be kept. The server will send back errors for
  /// attempts to read the historical versions.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  final pulumi.Input<bool>? disableResourceVersioning;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Whether to allow the bulk import API to accept history bundles and directly insert historical resource
  /// versions into the FHIR store. Importing resource histories creates resource interactions that appear to have
  /// occurred in the past, which clients may not want to allow. If set to false, history bundles within an import
  /// will fail with an error.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  /// ** This property can be changed manually in the Google Cloud Healthcare admin console without recreating the FHIR store **
  final pulumi.Input<bool>? enableHistoryImport;
  /// Whether to allow the ExecuteBundle API to accept history bundles, and directly insert and overwrite historical
  /// resource versions into the FHIR store. If set to false, using history bundles fails with an error.
  final pulumi.Input<bool>? enableHistoryModifications;
  /// Whether this FHIR store has the updateCreate capability. This determines if the client can use an Update
  /// operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through
  /// the Create operation and attempts to Update a non-existent resource will return errors. Please treat the audit
  /// logs with appropriate levels of care if client-specified resource IDs contain sensitive data such as patient
  /// identifiers, those IDs will be part of the FHIR resource path recorded in Cloud audit logs and Cloud Pub/Sub
  /// notifications.
  final pulumi.Input<bool>? enableUpdateCreate;
  /// User-supplied key-value pairs used to organize FHIR stores.
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
  /// The resource name for the FhirStore.
  /// ** Changing this property may recreate the FHIR store (removing all data) **
  final pulumi.Input<String>? name;
  /// (Optional, Deprecated)
  /// A nested object resource.
  /// Structure is documented below.
  ///
  /// > **Warning:** `notification_config` is deprecated and will be removed in a future major release. Use `notification_configs` instead.
  final pulumi.Input<FhirStoreNotificationConfig>? notificationConfig;
  /// A list of notifcation configs that configure the notification for every resource mutation in this FHIR store.
  /// Structure is documented below.
  final pulumi.Input<List<FhirStoreNotificationConfig>>? notificationConfigs;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The fully qualified name of this dataset
  final pulumi.Input<String>? selfLink;
  /// A list of streaming configs that configure the destinations of streaming export for every resource mutation in
  /// this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next
  /// resource mutation is streamed to the new location in addition to the existing ones. When a location is removed
  /// from the list, the server stops streaming to that location. Before adding a new config, you must add the required
  /// bigquery.dataEditor role to your project's Cloud Healthcare Service Agent service account. Some lag (typically on
  /// the order of dozens of seconds) is expected before the results show up in the streaming destination.
  /// Structure is documented below.
  final pulumi.Input<List<FhirStoreStreamConfig>>? streamConfigs;
  /// Configuration for how to validate incoming FHIR resources against configured profiles.
  /// Structure is documented below.
  final pulumi.Input<FhirStoreValidationConfig>? validationConfig;
  /// The FHIR specification version.
  /// Default value is `STU3`.
  /// Possible values are: `DSTU2`, `STU3`, `R4`.
  final pulumi.Input<String>? version;

  /// Creates a new [FhirStoreState].
  /// [complexDataTypeReferenceParsing] Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED by default after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
  /// [consentConfig] Specifies whether this store has consent enforcement. Not available for DSTU2 FHIR version due to absence of Consent resources. Not supported for R5 FHIR version.
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [defaultSearchHandlingStrict] If true, overrides the default search behavior for this FHIR store to handling=strict which returns an error for unrecognized search parameters.
  /// [disableReferentialIntegrity] Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store
  /// [disableResourceVersioning] Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [enableHistoryImport] Whether to allow the bulk import API to accept history bundles and directly insert historical resource
  /// [enableHistoryModifications] Whether to allow the ExecuteBundle API to accept history bundles, and directly insert and overwrite historical
  /// [enableUpdateCreate] Whether this FHIR store has the updateCreate capability. This determines if the client can use an Update
  /// [labels] User-supplied key-value pairs used to organize FHIR stores.
  /// [name] The resource name for the FhirStore.
  /// [notificationConfig] (Optional, Deprecated)
  /// [notificationConfigs] A list of notifcation configs that configure the notification for every resource mutation in this FHIR store.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [selfLink] The fully qualified name of this dataset
  /// [streamConfigs] A list of streaming configs that configure the destinations of streaming export for every resource mutation in
  /// [validationConfig] Configuration for how to validate incoming FHIR resources against configured profiles.
  /// [version] The FHIR specification version.
  FhirStoreState({
    this.complexDataTypeReferenceParsing,
    this.consentConfig,
    this.dataset,
    this.defaultSearchHandlingStrict,
    this.disableReferentialIntegrity,
    this.disableResourceVersioning,
    this.effectiveLabels,
    this.enableHistoryImport,
    this.enableHistoryModifications,
    this.enableUpdateCreate,
    this.labels,
    this.name,
    this.notificationConfig,
    this.notificationConfigs,
    this.pulumiLabels,
    this.selfLink,
    this.streamConfigs,
    this.validationConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complexDataTypeReferenceParsing': ?complexDataTypeReferenceParsing,
      'consentConfig': ?pulumi.Input.mapOptionalInputValue<FhirStoreConsentConfig, Map<String, dynamic>>(consentConfig, (value) => value.toMap()),
      'dataset': ?dataset,
      'defaultSearchHandlingStrict': ?defaultSearchHandlingStrict,
      'disableReferentialIntegrity': ?disableReferentialIntegrity,
      'disableResourceVersioning': ?disableResourceVersioning,
      'effectiveLabels': ?effectiveLabels,
      'enableHistoryImport': ?enableHistoryImport,
      'enableHistoryModifications': ?enableHistoryModifications,
      'enableUpdateCreate': ?enableUpdateCreate,
      'labels': ?labels,
      'name': ?name,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<FhirStoreNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'notificationConfigs': ?pulumi.Input.mapOptionalInputValue<List<FhirStoreNotificationConfig>, List<Map<String, dynamic>>>(notificationConfigs, (value) => pulumi.Input.encodeList<FhirStoreNotificationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pulumiLabels': ?pulumiLabels,
      'selfLink': ?selfLink,
      'streamConfigs': ?pulumi.Input.mapOptionalInputValue<List<FhirStoreStreamConfig>, List<Map<String, dynamic>>>(streamConfigs, (value) => pulumi.Input.encodeList<FhirStoreStreamConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationConfig': ?pulumi.Input.mapOptionalInputValue<FhirStoreValidationConfig, Map<String, dynamic>>(validationConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory FhirStoreState.fromMap(Map<String, dynamic> map) {
    return FhirStoreState(
      complexDataTypeReferenceParsing: map['complexDataTypeReferenceParsing'] == null ? null : (map['complexDataTypeReferenceParsing'] as String).input(),
      consentConfig: map['consentConfig'] == null ? null : (FhirStoreConsentConfig.fromMap((map['consentConfig'] as Map).cast<String, dynamic>())).input(),
      dataset: map['dataset'] == null ? null : (map['dataset'] as String).input(),
      defaultSearchHandlingStrict: map['defaultSearchHandlingStrict'] == null ? null : (map['defaultSearchHandlingStrict'] as bool).input(),
      disableReferentialIntegrity: map['disableReferentialIntegrity'] == null ? null : (map['disableReferentialIntegrity'] as bool).input(),
      disableResourceVersioning: map['disableResourceVersioning'] == null ? null : (map['disableResourceVersioning'] as bool).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      enableHistoryImport: map['enableHistoryImport'] == null ? null : (map['enableHistoryImport'] as bool).input(),
      enableHistoryModifications: map['enableHistoryModifications'] == null ? null : (map['enableHistoryModifications'] as bool).input(),
      enableUpdateCreate: map['enableUpdateCreate'] == null ? null : (map['enableUpdateCreate'] as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notificationConfig: map['notificationConfig'] == null ? null : (FhirStoreNotificationConfig.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>())).input(),
      notificationConfigs: map['notificationConfigs'] == null ? null : (pulumi.Input.decodeList<FhirStoreNotificationConfig>(map['notificationConfigs'], (value) => FhirStoreNotificationConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      streamConfigs: map['streamConfigs'] == null ? null : (pulumi.Input.decodeList<FhirStoreStreamConfig>(map['streamConfigs'], (value) => FhirStoreStreamConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validationConfig: map['validationConfig'] == null ? null : (FhirStoreValidationConfig.fromMap((map['validationConfig'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

