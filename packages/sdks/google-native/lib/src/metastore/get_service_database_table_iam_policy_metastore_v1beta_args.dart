// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1beta_get_service_database_table_iam_policy_metastore_v1beta_args_doc}
/// Arguments for getServiceDatabaseTableIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1beta_get_service_database_table_iam_policy_metastore_v1beta_args_doc}
class GetServiceDatabaseTableIamPolicyMetastoreV1betaArgs {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> tableId;

  /// Creates a new [GetServiceDatabaseTableIamPolicyMetastoreV1betaArgs].
  /// [databaseId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceId] Required.
  /// [tableId] Required.
  GetServiceDatabaseTableIamPolicyMetastoreV1betaArgs({
    required this.databaseId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.serviceId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceId': serviceId,
      'tableId': tableId,
    };
  }

  factory GetServiceDatabaseTableIamPolicyMetastoreV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceDatabaseTableIamPolicyMetastoreV1betaArgs(
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}

