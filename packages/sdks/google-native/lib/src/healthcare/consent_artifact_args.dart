// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image.dart';
import 'signature.dart';

/// {@template pulumi_healthcare_v1_consent_artifact_args_doc}
/// The set of arguments for ConsentArtifact.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_consent_artifact_args_doc}
class ConsentArtifactArgs {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  final pulumi.Input<List<Image>>? consentContentScreenshots;
  /// Optional. An string indicating the version of the consent information shown to the user.
  final pulumi.Input<String>? consentContentVersion;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  /// Optional. A signature from a guardian.
  final pulumi.Input<Signature>? guardianSignature;
  final pulumi.Input<String>? location;
  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// User's UUID provided by the client.
  final pulumi.Input<String> userId;
  /// Optional. User's signature.
  final pulumi.Input<Signature>? userSignature;
  /// Optional. A signature from a witness.
  final pulumi.Input<Signature>? witnessSignature;

  /// Creates a new [ConsentArtifactArgs].
  /// [consentContentScreenshots] Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  /// [consentContentVersion] Optional. An string indicating the version of the consent information shown to the user.
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [guardianSignature] Optional. A signature from a guardian.
  /// [location] Optional.
  /// [metadata] Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  /// [name] Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  /// [project] Optional.
  /// [userId] User's UUID provided by the client.
  /// [userSignature] Optional. User's signature.
  /// [witnessSignature] Optional. A signature from a witness.
  const ConsentArtifactArgs({
    this.consentContentScreenshots,
    this.consentContentVersion,
    required this.consentStoreId,
    required this.datasetId,
    this.guardianSignature,
    this.location,
    this.metadata,
    this.name,
    this.project,
    required this.userId,
    this.userSignature,
    this.witnessSignature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentContentScreenshots': ?pulumi.Input.mapOptionalInputValue<List<Image>, List<Map<String, dynamic>>>(consentContentScreenshots, (value) => pulumi.Input.encodeList<Image, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consentContentVersion': ?consentContentVersion,
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'guardianSignature': ?pulumi.Input.mapOptionalInputValue<Signature, Map<String, dynamic>>(guardianSignature, (value) => value.toMap()),
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'project': ?project,
      'userId': userId,
      'userSignature': ?pulumi.Input.mapOptionalInputValue<Signature, Map<String, dynamic>>(userSignature, (value) => value.toMap()),
      'witnessSignature': ?pulumi.Input.mapOptionalInputValue<Signature, Map<String, dynamic>>(witnessSignature, (value) => value.toMap()),
    };
  }

  factory ConsentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return ConsentArtifactArgs(
      consentContentScreenshots: (() { final guardedValue = map['consentContentScreenshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Image>(guardedValue, (value) => Image.fromMap((value as Map).cast<String, dynamic>()))); })(),
      consentContentVersion: (() { final guardedValue = map['consentContentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consentStoreId: pulumi.Input.fromValue(map['consentStoreId'] as String),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      guardianSignature: (() { final guardedValue = map['guardianSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Signature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      userSignature: (() { final guardedValue = map['userSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Signature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      witnessSignature: (() { final guardedValue = map['witnessSignature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Signature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
