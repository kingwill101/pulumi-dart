// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_project_environment_type_get_project_environment_type_args_doc}
/// Arguments for getProjectEnvironmentType.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_project_environment_type_get_project_environment_type_args_doc}
class GetProjectEnvironmentTypeArgs {
  /// The ID of the associated Dev Center Project.
  final pulumi.Input<String> devCenterProjectId;
  /// The name of this Dev Center Project Environment Type.
  final pulumi.Input<String> name;

  /// Creates a new [GetProjectEnvironmentTypeArgs].
  /// [devCenterProjectId] The ID of the associated Dev Center Project.
  /// [name] The name of this Dev Center Project Environment Type.
  GetProjectEnvironmentTypeArgs({
    required pulumi.Output<String> devCenterProjectId,
    required pulumi.Output<String> name,
  }) :
      devCenterProjectId = pulumi.Input.asInput<String>(devCenterProjectId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterProjectId': devCenterProjectId,
      'name': name,
    };
  }

  factory GetProjectEnvironmentTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectEnvironmentTypeArgs(
      devCenterProjectId: pulumi.Output.create<String>(map['devCenterProjectId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

