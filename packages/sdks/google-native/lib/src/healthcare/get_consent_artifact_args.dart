// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_consent_artifact_args_doc}
/// Arguments for getConsentArtifact.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_consent_artifact_args_doc}
class GetConsentArtifactArgs {
  final pulumi.Input<String> consentArtifactId;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConsentArtifactArgs].
  /// [consentArtifactId] Required.
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConsentArtifactArgs({
    required this.consentArtifactId,
    required this.consentStoreId,
    required this.datasetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentArtifactId': consentArtifactId,
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConsentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetConsentArtifactArgs(
      consentArtifactId: (map['consentArtifactId'] as String).input(),
      consentStoreId: (map['consentStoreId'] as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

