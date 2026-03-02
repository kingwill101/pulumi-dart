// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_user_data_mapping_args_doc}
/// Arguments for getUserDataMapping.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_user_data_mapping_args_doc}
class GetUserDataMappingArgs {
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> userDataMappingId;

  /// Creates a new [GetUserDataMappingArgs].
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [userDataMappingId] Required.
  GetUserDataMappingArgs({
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

  factory GetUserDataMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetUserDataMappingArgs(
      consentStoreId: (map['consentStoreId'] as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      userDataMappingId: (map['userDataMappingId'] as String).input(),
    );
  }
}

