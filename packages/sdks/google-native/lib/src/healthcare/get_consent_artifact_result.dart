// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_response.dart';
import 'signature_response.dart';

/// Result data returned by getConsentArtifact.
class GetConsentArtifactResult {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  final List<ImageResponse> consentContentScreenshots;
  /// Optional. An string indicating the version of the consent information shown to the user.
  final String consentContentVersion;
  /// Optional. A signature from a guardian.
  final SignatureResponse guardianSignature;
  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  final Map<String, String> metadata;
  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  final String name;
  /// User's UUID provided by the client.
  final String userId;
  /// Optional. User's signature.
  final SignatureResponse userSignature;
  /// Optional. A signature from a witness.
  final SignatureResponse witnessSignature;

  /// Creates a new [GetConsentArtifactResult].
  /// [consentContentScreenshots] Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  /// [consentContentVersion] Optional. An string indicating the version of the consent information shown to the user.
  /// [guardianSignature] Optional. A signature from a guardian.
  /// [metadata] Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  /// [name] Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  /// [userId] User's UUID provided by the client.
  /// [userSignature] Optional. User's signature.
  /// [witnessSignature] Optional. A signature from a witness.
  GetConsentArtifactResult({
    required this.consentContentScreenshots,
    required this.consentContentVersion,
    required this.guardianSignature,
    required this.metadata,
    required this.name,
    required this.userId,
    required this.userSignature,
    required this.witnessSignature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentContentScreenshots': pulumi.Input.encodeList<ImageResponse, Map<String, dynamic>>(consentContentScreenshots, (value) => value.toMap()),
      'consentContentVersion': consentContentVersion,
      'guardianSignature': guardianSignature.toMap(),
      'metadata': metadata,
      'name': name,
      'userId': userId,
      'userSignature': userSignature.toMap(),
      'witnessSignature': witnessSignature.toMap(),
    };
  }

  factory GetConsentArtifactResult.fromMap(Map<String, dynamic> map) {
    return GetConsentArtifactResult(
      consentContentScreenshots: pulumi.Input.decodeList<ImageResponse>(map['consentContentScreenshots']!, (value) => ImageResponse.fromMap((value as Map).cast<String, dynamic>())),
      consentContentVersion: map['consentContentVersion'] as String,
      guardianSignature: SignatureResponse.fromMap((map['guardianSignature']! as Map).cast<String, dynamic>()),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      userId: map['userId'] as String,
      userSignature: SignatureResponse.fromMap((map['userSignature']! as Map).cast<String, dynamic>()),
      witnessSignature: SignatureResponse.fromMap((map['witnessSignature']! as Map).cast<String, dynamic>()),
    );
  }
}

