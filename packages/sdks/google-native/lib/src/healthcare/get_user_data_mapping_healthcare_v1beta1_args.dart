// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_user_data_mapping_healthcare_v1beta1_args_doc}
/// Arguments for getUserDataMapping.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_user_data_mapping_healthcare_v1beta1_args_doc}
class GetUserDataMappingHealthcareV1beta1Args {
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> userDataMappingId;

  /// Creates a new [GetUserDataMappingHealthcareV1beta1Args].
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [userDataMappingId] Required.
  GetUserDataMappingHealthcareV1beta1Args({
    required this.consentStoreId,
    required this.datasetId,
    required this.location,
    this.project,
    required this.userDataMappingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
      'userDataMappingId': userDataMappingId,
    };
  }

  factory GetUserDataMappingHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetUserDataMappingHealthcareV1beta1Args(
      consentStoreId: (map['consentStoreId'] as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      userDataMappingId: (map['userDataMappingId'] as String).input(),
    );
  }
}

