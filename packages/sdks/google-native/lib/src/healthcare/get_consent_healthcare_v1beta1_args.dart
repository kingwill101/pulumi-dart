// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_consent_healthcare_v1beta1_args_doc}
/// Arguments for getConsent.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_consent_healthcare_v1beta1_args_doc}
class GetConsentHealthcareV1beta1Args {
  final pulumi.Input<String> consentId;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConsentHealthcareV1beta1Args].
  /// [consentId] Required.
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConsentHealthcareV1beta1Args({
    required this.consentId,
    required this.consentStoreId,
    required this.datasetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentId': consentId,
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConsentHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConsentHealthcareV1beta1Args(
      consentId: (map['consentId'] as String).input(),
      consentStoreId: (map['consentStoreId'] as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

