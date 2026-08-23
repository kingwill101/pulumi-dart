// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_project_cloudresourcemanager_v3_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_project_cloudresourcemanager_v3_args_doc}
class GetProjectCloudresourcemanagerV3Args {
  final pulumi.Input<String>? project;

  /// Creates a new [GetProjectCloudresourcemanagerV3Args].
  /// [project] Optional.
  const GetProjectCloudresourcemanagerV3Args({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetProjectCloudresourcemanagerV3Args.fromMap(Map<String, dynamic> map) {
    return GetProjectCloudresourcemanagerV3Args(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
