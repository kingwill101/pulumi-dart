// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_response.dart';
import 'signature_response.dart';

/// Result data returned by getConsentArtifact.
class GetConsentArtifactResult {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  final List<ImageResponse>? consentContentScreenshots;
  /// Optional. An string indicating the version of the consent information shown to the user.
  final String? consentContentVersion;
  /// Optional. A signature from a guardian.
  final SignatureResponse? guardianSignature;
  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  final Map<String, String>? metadata;
  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  final String? name;
  /// User's UUID provided by the client.
  final String? userId;
  /// Optional. User's signature.
  final SignatureResponse? userSignature;
  /// Optional. A signature from a witness.
  final SignatureResponse? witnessSignature;

  /// Creates a new [GetConsentArtifactResult].
  /// [consentContentScreenshots] Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  /// [consentContentVersion] Optional. An string indicating the version of the consent information shown to the user.
  /// [guardianSignature] Optional. A signature from a guardian.
  /// [metadata] Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  /// [name] Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  /// [userId] User's UUID provided by the client.
  /// [userSignature] Optional. User's signature.
  /// [witnessSignature] Optional. A signature from a witness.
  const GetConsentArtifactResult({
    this.consentContentScreenshots,
    this.consentContentVersion,
    this.guardianSignature,
    this.metadata,
    this.name,
    this.userId,
    this.userSignature,
    this.witnessSignature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentContentScreenshots': ?(() { final guardedValue = consentContentScreenshots; if (guardedValue == null) return null; return pulumi.Input.encodeList<ImageResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'consentContentVersion': ?consentContentVersion,
      'guardianSignature': ?guardianSignature?.toMap(),
      'metadata': ?metadata,
      'name': ?name,
      'userId': ?userId,
      'userSignature': ?userSignature?.toMap(),
      'witnessSignature': ?witnessSignature?.toMap(),
    };
  }

  factory GetConsentArtifactResult.fromMap(Map<String, dynamic> map) {
    return GetConsentArtifactResult(
      consentContentScreenshots: (() { final guardedValue = map['consentContentScreenshots']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageResponse>(guardedValue, (value) => ImageResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      consentContentVersion: (() { final guardedValue = map['consentContentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      guardianSignature: (() { final guardedValue = map['guardianSignature']; if (guardedValue == null) return null; return SignatureResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userSignature: (() { final guardedValue = map['userSignature']; if (guardedValue == null) return null; return SignatureResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      witnessSignature: (() { final guardedValue = map['witnessSignature']; if (guardedValue == null) return null; return SignatureResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
