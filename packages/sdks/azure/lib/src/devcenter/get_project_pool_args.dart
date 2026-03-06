// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_project_pool_get_project_pool_args_doc}
/// Arguments for getProjectPool.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_project_pool_get_project_pool_args_doc}
class GetProjectPoolArgs {
  /// The ID of the associated Dev Center Project.
  final pulumi.Input<String> devCenterProjectId;
  /// The name of this Dev Center Project Pool.
  final pulumi.Input<String> name;

  /// Creates a new [GetProjectPoolArgs].
  /// [devCenterProjectId] The ID of the associated Dev Center Project.
  /// [name] The name of this Dev Center Project Pool.
  const GetProjectPoolArgs({
    required this.devCenterProjectId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterProjectId': devCenterProjectId,
      'name': name,
    };
  }

  factory GetProjectPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectPoolArgs(
      devCenterProjectId: pulumi.Input.fromValue(map['devCenterProjectId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

