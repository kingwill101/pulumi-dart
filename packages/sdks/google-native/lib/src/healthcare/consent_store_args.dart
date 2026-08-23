// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_consent_store_args_doc}
/// The set of arguments for ConsentStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_consent_store_args_doc}
class ConsentStoreArgs {
  /// Required. The ID of the consent store to create. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`. Cannot be changed after creation.
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  /// Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  final pulumi.Input<String>? defaultConsentTtl;
  /// Optional. If `true`, UpdateConsent creates the Consent if it does not already exist. If unspecified, defaults to `false`.
  final pulumi.Input<bool>? enableConsentCreateOnUpdate;
  /// Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https://cloud.google.com/healthcare/docs/how-tos/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. Cannot be changed after creation.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [ConsentStoreArgs].
  /// [consentStoreId] Required. The ID of the consent store to create. The string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`. Cannot be changed after creation.
  /// [datasetId] Required.
  /// [defaultConsentTtl] Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  /// [enableConsentCreateOnUpdate] Optional. If `true`, UpdateConsent creates the Consent if it does not already exist. If unspecified, defaults to `false`.
  /// [labels] Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https://cloud.google.com/healthcare/docs/how-tos/labeling-resources
  /// [location] Optional.
  /// [name] Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. Cannot be changed after creation.
  /// [project] Optional.
  const ConsentStoreArgs({
    required this.consentStoreId,
    required this.datasetId,
    this.defaultConsentTtl,
    this.enableConsentCreateOnUpdate,
    this.labels,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'defaultConsentTtl': ?defaultConsentTtl,
      'enableConsentCreateOnUpdate': ?enableConsentCreateOnUpdate,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ConsentStoreArgs.fromMap(Map<String, dynamic> map) {
    return ConsentStoreArgs(
      consentStoreId: pulumi.Input.fromValue(map['consentStoreId'] as String),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      defaultConsentTtl: (() { final guardedValue = map['defaultConsentTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableConsentCreateOnUpdate: (() { final guardedValue = map['enableConsentCreateOnUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
