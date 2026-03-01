// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1alpha_get_service_backup_iam_policy_metastore_v1alpha_args_doc}
/// Arguments for getServiceBackupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1alpha_get_service_backup_iam_policy_metastore_v1alpha_args_doc}
class GetServiceBackupIamPolicyMetastoreV1alphaArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetServiceBackupIamPolicyMetastoreV1alphaArgs].
  /// [backupId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceId] Required.
  GetServiceBackupIamPolicyMetastoreV1alphaArgs({
    required pulumi.Output<String> backupId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceId,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetServiceBackupIamPolicyMetastoreV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceBackupIamPolicyMetastoreV1alphaArgs(
      backupId: pulumi.Output.create<String>(map['backupId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

