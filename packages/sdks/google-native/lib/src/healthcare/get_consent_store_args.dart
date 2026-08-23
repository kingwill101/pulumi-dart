// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_consent_store_args_doc}
/// Arguments for getConsentStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_consent_store_args_doc}
class GetConsentStoreArgs {
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConsentStoreArgs].
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetConsentStoreArgs({
    required this.consentStoreId,
    required this.datasetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConsentStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetConsentStoreArgs(
      consentStoreId: pulumi.Input.fromValue(map['consentStoreId'] as String),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
