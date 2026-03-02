// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1beta_get_service_database_iam_policy_metastore_v1beta_args_doc}
/// Arguments for getServiceDatabaseIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1beta_get_service_database_iam_policy_metastore_v1beta_args_doc}
class GetServiceDatabaseIamPolicyMetastoreV1betaArgs {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetServiceDatabaseIamPolicyMetastoreV1betaArgs].
  /// [databaseId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceId] Required.
  GetServiceDatabaseIamPolicyMetastoreV1betaArgs({
    required this.databaseId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetServiceDatabaseIamPolicyMetastoreV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceDatabaseIamPolicyMetastoreV1betaArgs(
      databaseId: (map['databaseId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceId: (map['serviceId'] as String).input(),
    );
  }
}

