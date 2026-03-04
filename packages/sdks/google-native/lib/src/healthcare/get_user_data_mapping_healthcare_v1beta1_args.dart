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

  factory GetUserDataMappingHealthcareV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetUserDataMappingHealthcareV1beta1Args(
      consentStoreId: pulumi.Input.fromValue(map['consentStoreId'] as String),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userDataMappingId: pulumi.Input.fromValue(
        map['userDataMappingId'] as String,
      ),
    );
  }
}
