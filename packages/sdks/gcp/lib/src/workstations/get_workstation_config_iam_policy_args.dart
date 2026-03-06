// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_get_workstation_config_iam_policy_get_workstation_config_iam_policy_args_doc}
/// Arguments for getWorkstationConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_workstations_get_workstation_config_iam_policy_get_workstation_config_iam_policy_args_doc}
class GetWorkstationConfigIamPolicyArgs {
  /// The location where the workstation cluster config should reside.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID of the parent workstation cluster.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workstationClusterId;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workstationConfigId;

  /// Creates a new [GetWorkstationConfigIamPolicyArgs].
  /// [location] The location where the workstation cluster config should reside.
  /// [project] The ID of the project in which the resource belongs.
  /// [workstationClusterId] The ID of the parent workstation cluster.
  /// [workstationConfigId] Used to find the parent resource to bind the IAM policy to
  const GetWorkstationConfigIamPolicyArgs({
    this.location,
    this.project,
    required this.workstationClusterId,
    required this.workstationConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
    };
  }

  factory GetWorkstationConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkstationConfigIamPolicyArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workstationClusterId: pulumi.Input.fromValue(map['workstationClusterId'] as String),
      workstationConfigId: pulumi.Input.fromValue(map['workstationConfigId'] as String),
    );
  }
}

