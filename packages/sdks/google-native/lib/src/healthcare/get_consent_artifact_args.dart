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
    required pulumi.Output<String> consentArtifactId,
    required pulumi.Output<String> consentStoreId,
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      consentArtifactId = pulumi.Input.asInput<String>(consentArtifactId),
      consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      consentArtifactId: pulumi.Output.create<String>(map['consentArtifactId'] as String),
      consentStoreId: pulumi.Output.create<String>(map['consentStoreId'] as String),
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

