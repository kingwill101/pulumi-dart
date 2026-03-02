// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_state_healthcare_v1beta1.dart';
import 'google_cloud_healthcare_v1beta1_consent_policy.dart';

/// {@template pulumi_healthcare_v1beta1_consent_healthcare_v1beta1_args_doc}
/// The set of arguments for Consent.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_consent_healthcare_v1beta1_args_doc}
class ConsentHealthcareV1beta1Args {
  /// The resource name of the Consent artifact that contains proof of the end user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  final pulumi.Input<String> consentArtifact;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  /// Timestamp in UTC of when this Consent is considered expired.
  final pulumi.Input<String>? expireTime;
  final pulumi.Input<String>? location;
  /// Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. Cannot be changed after creation.
  final pulumi.Input<String>? name;
  /// Optional. Represents a user's consent in terms of the resources that can be accessed and under what conditions.
  final pulumi.Input<List<GoogleCloudHealthcareV1beta1ConsentPolicy>>? policies;
  final pulumi.Input<String>? project;
  /// Indicates the current state of this Consent.
  final pulumi.Input<ConsentStateHealthcareV1beta1> state;
  /// Input only. The time to live for this Consent from when it is created.
  final pulumi.Input<String>? ttl;
  /// User's UUID provided by the client.
  final pulumi.Input<String> userId;

  /// Creates a new [ConsentHealthcareV1beta1Args].
  /// [consentArtifact] The resource name of the Consent artifact that contains proof of the end user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [expireTime] Timestamp in UTC of when this Consent is considered expired.
  /// [location] Optional.
  /// [metadata] Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.
  /// [name] Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. Cannot be changed after creation.
  /// [policies] Optional. Represents a user's consent in terms of the resources that can be accessed and under what conditions.
  /// [project] Optional.
  /// [state] Indicates the current state of this Consent.
  /// [ttl] Input only. The time to live for this Consent from when it is created.
  /// [userId] User's UUID provided by the client.
  ConsentHealthcareV1beta1Args({
    required this.consentArtifact,
    required this.consentStoreId,
    required this.datasetId,
    this.expireTime,
    this.location,
    this.metadata,
    this.name,
    this.policies,
    this.project,
    required this.state,
    this.ttl,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentArtifact': consentArtifact,
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'expireTime': ?expireTime,
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudHealthcareV1beta1ConsentPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<GoogleCloudHealthcareV1beta1ConsentPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'state': pulumi.Input.mapInputValue<ConsentStateHealthcareV1beta1, String>(state, (value) => value.value),
      'ttl': ?ttl,
      'userId': userId,
    };
  }

  factory ConsentHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ConsentHealthcareV1beta1Args(
      consentArtifact: (map['consentArtifact'] as String).input(),
      consentStoreId: (map['consentStoreId'] as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      policies: map['policies'] == null ? null : (pulumi.Input.decodeList<GoogleCloudHealthcareV1beta1ConsentPolicy>(map['policies'], (value) => GoogleCloudHealthcareV1beta1ConsentPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      state: (ConsentStateHealthcareV1beta1.fromValue(map['state'] as String)).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

