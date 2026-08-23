// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_project_get_project_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_project_get_project_args_doc}
class GetProjectArgs {
  /// The project ID. If it is not provided, the provider project is used.
  final pulumi.Input<String>? projectId;

  /// Creates a new [GetProjectArgs].
  /// [projectId] The project ID. If it is not provided, the provider project is used.
  const GetProjectArgs({
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': ?projectId,
    };
  }

  factory GetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs(
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
