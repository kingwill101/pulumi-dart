// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_determination_log_config.dart';
import 'consent_config_version.dart';
import 'consent_header_handling.dart';

/// Configures whether to enforce consent for the FHIR store and which consent enforcement version is being used.
class ConsentConfig {
  /// Optional. Specifies how the server logs the consent-aware requests. If not specified, the `AccessDeterminationLogConfig.LogLevel.MINIMUM` option is used.
  final pulumi.Input<AccessDeterminationLogConfig>? accessDeterminationLogConfig;
  /// Optional. If set to true, when accessing FHIR resources, the consent headers provided using [SMART-on-FHIR](https://cloud.google.com/healthcare/private/docs/how-tos/smart-on-fhir) will be verified against consents given by patients. See the ConsentEnforcementVersion for the supported consent headers.
  final pulumi.Input<bool>? accessEnforced;
  /// Optional. Different options to configure the behaviour of the server when handling the `X-Consent-Scope` header.
  final pulumi.Input<ConsentHeaderHandling>? consentHeaderHandling;
  /// The versioned names of the enforced admin Consent resource(s), in the format `projects/{project_id}/locations/{location}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/fhir/Consent/{resource_id}/_history/{version_id}`. For FHIR stores with `disable_resource_versioning=true`, the format is `projects/{project_id}/locations/{location}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/fhir/Consent/{resource_id}`. This field can only be updated using ApplyAdminConsents.
  final pulumi.Input<List<String>>? enforcedAdminConsents;
  /// Specifies which consent enforcement version is being used for this FHIR store. This field can only be set once by either CreateFhirStore or UpdateFhirStore. After that, you must call ApplyConsents to change the version.
  final pulumi.Input<ConsentConfigVersion> version;

  /// Creates a new [ConsentConfig].
  /// [accessDeterminationLogConfig] Optional. Specifies how the server logs the consent-aware requests. If not specified, the `AccessDeterminationLogConfig.LogLevel.MINIMUM` option is used.
  /// [accessEnforced] Optional. If set to true, when accessing FHIR resources, the consent headers provided using [SMART-on-FHIR](https://cloud.google.com/healthcare/private/docs/how-tos/smart-on-fhir) will be verified against consents given by patients. See the ConsentEnforcementVersion for the supported consent headers.
  /// [consentHeaderHandling] Optional. Different options to configure the behaviour of the server when handling the `X-Consent-Scope` header.
  /// [enforcedAdminConsents] The versioned names of the enforced admin Consent resource(s), in the format `projects/{project_id}/locations/{location}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/fhir/Consent/{resource_id}/_history/{version_id}`. For FHIR stores with `disable_resource_versioning=true`, the format is `projects/{project_id}/locations/{location}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/fhir/Consent/{resource_id}`. This field can only be updated using ApplyAdminConsents.
  /// [version] Specifies which consent enforcement version is being used for this FHIR store. This field can only be set once by either CreateFhirStore or UpdateFhirStore. After that, you must call ApplyConsents to change the version.
  ConsentConfig({
    this.accessDeterminationLogConfig,
    this.accessEnforced,
    this.consentHeaderHandling,
    this.enforcedAdminConsents,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessDeterminationLogConfig': ?pulumi.Input.mapOptionalInputValue<AccessDeterminationLogConfig, Map<String, dynamic>>(accessDeterminationLogConfig, (value) => value.toMap()),
      'accessEnforced': ?accessEnforced,
      'consentHeaderHandling': ?pulumi.Input.mapOptionalInputValue<ConsentHeaderHandling, Map<String, dynamic>>(consentHeaderHandling, (value) => value.toMap()),
      'enforcedAdminConsents': ?enforcedAdminConsents,
      'version': pulumi.Input.mapInputValue<ConsentConfigVersion, String>(version, (value) => value.value),
    };
  }

  factory ConsentConfig.fromMap(Map<String, dynamic> map) {
    return ConsentConfig(
      accessDeterminationLogConfig: map['accessDeterminationLogConfig'] == null ? null : (AccessDeterminationLogConfig.fromMap((map['accessDeterminationLogConfig']! as Map).cast<String, dynamic>())).input(),
      accessEnforced: map['accessEnforced'] == null ? null : (map['accessEnforced']! as bool).input(),
      consentHeaderHandling: map['consentHeaderHandling'] == null ? null : (ConsentHeaderHandling.fromMap((map['consentHeaderHandling']! as Map).cast<String, dynamic>())).input(),
      enforcedAdminConsents: map['enforcedAdminConsents'] == null ? null : ((map['enforcedAdminConsents']! as List).cast<String>()).input(),
      version: (ConsentConfigVersion.fromValue(map['version'] as String)).input(),
    );
  }
}

