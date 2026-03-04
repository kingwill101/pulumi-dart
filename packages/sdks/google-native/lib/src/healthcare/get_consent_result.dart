// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_healthcare_v1_consent_policy_response.dart';

/// Result data returned by getConsent.
class GetConsentResult {
  /// The resource name of the Consent artifact that contains proof of the end user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  final String consentArtifact;

  /// Timestamp in UTC of when this Consent is considered expired.
  final String expireTime;

  /// Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.
  final Map<String, String> metadata;

  /// Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. Cannot be changed after creation.
  final String name;

  /// Optional. Represents a user's consent in terms of the resources that can be accessed and under what conditions.
  final List<GoogleCloudHealthcareV1ConsentPolicyResponse> policies;

  /// The timestamp that the revision was created.
  final String revisionCreateTime;

  /// The revision ID of the Consent. The format is an 8-character hexadecimal string. Refer to a specific revision of a Consent by appending `@{revision_id}` to the Consent's resource name.
  final String revisionId;

  /// Indicates the current state of this Consent.
  final String state;

  /// Input only. The time to live for this Consent from when it is created.
  final String ttl;

  /// User's UUID provided by the client.
  final String userId;

  /// Creates a new [GetConsentResult].
  /// [consentArtifact] The resource name of the Consent artifact that contains proof of the end user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  /// [expireTime] Timestamp in UTC of when this Consent is considered expired.
  /// [metadata] Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.
  /// [name] Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. Cannot be changed after creation.
  /// [policies] Optional. Represents a user's consent in terms of the resources that can be accessed and under what conditions.
  /// [revisionCreateTime] The timestamp that the revision was created.
  /// [revisionId] The revision ID of the Consent. The format is an 8-character hexadecimal string. Refer to a specific revision of a Consent by appending `@{revision_id}` to the Consent's resource name.
  /// [state] Indicates the current state of this Consent.
  /// [ttl] Input only. The time to live for this Consent from when it is created.
  /// [userId] User's UUID provided by the client.
  GetConsentResult({
    required this.consentArtifact,
    required this.expireTime,
    required this.metadata,
    required this.name,
    required this.policies,
    required this.revisionCreateTime,
    required this.revisionId,
    required this.state,
    required this.ttl,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentArtifact': consentArtifact,
      'expireTime': expireTime,
      'metadata': metadata,
      'name': name,
      'policies':
          pulumi.Input.encodeList<
            GoogleCloudHealthcareV1ConsentPolicyResponse,
            Map<String, dynamic>
          >(policies, (value) => value.toMap()),
      'revisionCreateTime': revisionCreateTime,
      'revisionId': revisionId,
      'state': state,
      'ttl': ttl,
      'userId': userId,
    };
  }

  factory GetConsentResult.fromMap(Map<String, dynamic> map) {
    return GetConsentResult(
      consentArtifact: map['consentArtifact'] as String,
      expireTime: map['expireTime'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      policies:
          pulumi.Input.decodeList<GoogleCloudHealthcareV1ConsentPolicyResponse>(
            map['policies']!,
            (value) => GoogleCloudHealthcareV1ConsentPolicyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      revisionCreateTime: map['revisionCreateTime'] as String,
      revisionId: map['revisionId'] as String,
      state: map['state'] as String,
      ttl: map['ttl'] as String,
      userId: map['userId'] as String,
    );
  }
}
