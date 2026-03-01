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
    required pulumi.Output<String> databaseId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceId,
  }) :
      databaseId = pulumi.Input.asInput<String>(databaseId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId);

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
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

