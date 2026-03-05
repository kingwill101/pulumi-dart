// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_consent_artifact_healthcare_v1beta1_args_doc}
/// Arguments for getConsentArtifact.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_consent_artifact_healthcare_v1beta1_args_doc}
class GetConsentArtifactHealthcareV1beta1Args {
  final pulumi.Input<String> consentArtifactId;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConsentArtifactHealthcareV1beta1Args].
  /// [consentArtifactId] Required.
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConsentArtifactHealthcareV1beta1Args({
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

  factory GetConsentArtifactHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConsentArtifactHealthcareV1beta1Args(
      consentArtifactId: pulumi.Input.fromValue(map['consentArtifactId'] as String),
      consentStoreId: pulumi.Input.fromValue(map['consentStoreId'] as String),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

