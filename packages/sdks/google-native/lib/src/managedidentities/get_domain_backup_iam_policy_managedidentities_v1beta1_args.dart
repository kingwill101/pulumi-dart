// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1beta1_get_domain_backup_iam_policy_managedidentities_v1beta1_args_doc}
/// Arguments for getDomainBackupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1beta1_get_domain_backup_iam_policy_managedidentities_v1beta1_args_doc}
class GetDomainBackupIamPolicyManagedidentitiesV1beta1Args {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> domainId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDomainBackupIamPolicyManagedidentitiesV1beta1Args].
  /// [backupId] Required.
  /// [domainId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDomainBackupIamPolicyManagedidentitiesV1beta1Args({
    required this.backupId,
    required this.domainId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'domainId': domainId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDomainBackupIamPolicyManagedidentitiesV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDomainBackupIamPolicyManagedidentitiesV1beta1Args(
      backupId: pulumi.Input.fromValue(map['backupId'] as String),
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
