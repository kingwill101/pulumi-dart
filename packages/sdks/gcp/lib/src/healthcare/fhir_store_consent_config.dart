// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_store_consent_config_access_determination_log_config.dart';
import 'fhir_store_consent_config_consent_header_handling.dart';

class FhirStoreConsentConfig {
  /// Specifies how the server logs the consent-aware requests. If not specified, the AccessDeterminationLogConfig.LogLevel.MINIMUM option is used.
  /// Structure is documented below.
  final pulumi.Input<FhirStoreConsentConfigAccessDeterminationLogConfig>? accessDeterminationLogConfig;
  /// The default value is false. If set to true, when accessing FHIR resources, the consent headers will be verified against consents given by patients. See the ConsentEnforcementVersion for the supported consent headers.
  final pulumi.Input<bool>? accessEnforced;
  /// Different options to configure the behaviour of the server when handling the X-Consent-Scope header.
  /// Structure is documented below.
  final pulumi.Input<FhirStoreConsentConfigConsentHeaderHandling>? consentHeaderHandling;
  /// (Output)
  /// The versioned names of the enforced admin Consent resource(s), in the format projects/{projectId}/locations/{location}/datasets/{datasetId}/fhirStores/{fhirStoreId}/fhir/Consent/{resourceId}/_history/{version_id}. For FHIR stores with disableResourceVersioning=true, the format is projects/{projectId}/locations/{location}/datasets/{datasetId}/fhirStores/{fhirStoreId}/fhir/Consent/{resourceId}. This field can only be updated using [fhirStores.applyAdminConsents][].
  final pulumi.Input<List<String>>? enforcedAdminConsents;
  /// Specifies which consent enforcement version is being used for this FHIR store. This field can only be set once by either [fhirStores.create][] or [fhirStores.patch][]. After that, you must call [fhirStores.applyConsents][] to change the version.
  /// Possible values are: `CONSENT_ENFORCEMENT_VERSION_UNSPECIFIED`, `V1`.
  final pulumi.Input<String> version;

  /// Creates a new [FhirStoreConsentConfig].
  /// [accessDeterminationLogConfig] Specifies how the server logs the consent-aware requests. If not specified, the AccessDeterminationLogConfig.LogLevel.MINIMUM option is used.
  /// [accessEnforced] The default value is false. If set to true, when accessing FHIR resources, the consent headers will be verified against consents given by patients. See the ConsentEnforcementVersion for the supported consent headers.
  /// [consentHeaderHandling] Different options to configure the behaviour of the server when handling the X-Consent-Scope header.
  /// [enforcedAdminConsents] (Output)
  /// [version] Specifies which consent enforcement version is being used for this FHIR store. This field can only be set once by either [fhirStores.create][] or [fhirStores.patch][]. After that, you must call [fhirStores.applyConsents][] to change the version.
  FhirStoreConsentConfig({
    this.accessDeterminationLogConfig,
    this.accessEnforced,
    this.consentHeaderHandling,
    this.enforcedAdminConsents,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessDeterminationLogConfig': ?pulumi.Input.mapOptionalInputValue<FhirStoreConsentConfigAccessDeterminationLogConfig, Map<String, dynamic>>(accessDeterminationLogConfig, (value) => value.toMap()),
      'accessEnforced': ?accessEnforced,
      'consentHeaderHandling': ?pulumi.Input.mapOptionalInputValue<FhirStoreConsentConfigConsentHeaderHandling, Map<String, dynamic>>(consentHeaderHandling, (value) => value.toMap()),
      'enforcedAdminConsents': ?enforcedAdminConsents,
      'version': version,
    };
  }

  factory FhirStoreConsentConfig.fromMap(Map<String, dynamic> map) {
    return FhirStoreConsentConfig(
      accessDeterminationLogConfig: map['accessDeterminationLogConfig'] == null ? null : (FhirStoreConsentConfigAccessDeterminationLogConfig.fromMap((map['accessDeterminationLogConfig']! as Map).cast<String, dynamic>())).input(),
      accessEnforced: map['accessEnforced'] == null ? null : (map['accessEnforced']! as bool).input(),
      consentHeaderHandling: map['consentHeaderHandling'] == null ? null : (FhirStoreConsentConfigConsentHeaderHandling.fromMap((map['consentHeaderHandling']! as Map).cast<String, dynamic>())).input(),
      enforcedAdminConsents: map['enforcedAdminConsents'] == null ? null : ((map['enforcedAdminConsents']! as List).cast<String>()).input(),
      version: (map['version'] as String).input(),
    );
  }
}

