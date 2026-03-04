// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdr_v1_get_management_server_iam_policy_args_doc}
/// Arguments for getManagementServerIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_backupdr_v1_get_management_server_iam_policy_args_doc}
class GetManagementServerIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> managementServerId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagementServerIamPolicyArgs].
  /// [location] Required.
  /// [managementServerId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetManagementServerIamPolicyArgs({
    required this.location,
    required this.managementServerId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'managementServerId': managementServerId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetManagementServerIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementServerIamPolicyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      managementServerId: pulumi.Input.fromValue(
        map['managementServerId'] as String,
      ),
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
