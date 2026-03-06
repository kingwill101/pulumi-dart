// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workstations_get_workstation_iam_policy_get_workstation_iam_policy_args_doc}
/// Arguments for getWorkstationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_workstations_get_workstation_iam_policy_get_workstation_iam_policy_args_doc}
class GetWorkstationIamPolicyArgs {
  /// The location where the workstation parent resources reside.
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
  /// The ID of the parent workstation cluster config.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workstationConfigId;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workstationId;

  /// Creates a new [GetWorkstationIamPolicyArgs].
  /// [location] The location where the workstation parent resources reside.
  /// [project] The ID of the project in which the resource belongs.
  /// [workstationClusterId] The ID of the parent workstation cluster.
  /// [workstationConfigId] The ID of the parent workstation cluster config.
  /// [workstationId] Used to find the parent resource to bind the IAM policy to
  const GetWorkstationIamPolicyArgs({
    this.location,
    this.project,
    required this.workstationClusterId,
    required this.workstationConfigId,
    required this.workstationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
      'workstationId': workstationId,
    };
  }

  factory GetWorkstationIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkstationIamPolicyArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workstationClusterId: pulumi.Input.fromValue(map['workstationClusterId'] as String),
      workstationConfigId: pulumi.Input.fromValue(map['workstationConfigId'] as String),
      workstationId: pulumi.Input.fromValue(map['workstationId'] as String),
    );
  }
}

