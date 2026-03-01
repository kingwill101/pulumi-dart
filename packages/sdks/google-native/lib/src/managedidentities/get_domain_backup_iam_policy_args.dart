// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1_get_domain_backup_iam_policy_args_doc}
/// Arguments for getDomainBackupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1_get_domain_backup_iam_policy_args_doc}
class GetDomainBackupIamPolicyArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> domainId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDomainBackupIamPolicyArgs].
  /// [backupId] Required.
  /// [domainId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDomainBackupIamPolicyArgs({
    required pulumi.Output<String> backupId,
    required pulumi.Output<String> domainId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      domainId = pulumi.Input.asInput<String>(domainId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'domainId': domainId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDomainBackupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainBackupIamPolicyArgs(
      backupId: pulumi.Output.create<String>(map['backupId'] as String),
      domainId: pulumi.Output.create<String>(map['domainId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

