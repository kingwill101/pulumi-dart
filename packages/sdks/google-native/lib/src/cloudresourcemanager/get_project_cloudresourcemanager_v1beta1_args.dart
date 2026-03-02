// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v1beta1_get_project_cloudresourcemanager_v1beta1_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v1beta1_get_project_cloudresourcemanager_v1beta1_args_doc}
class GetProjectCloudresourcemanagerV1beta1Args {
  final pulumi.Input<String>? project;

  /// Creates a new [GetProjectCloudresourcemanagerV1beta1Args].
  /// [project] Optional.
  GetProjectCloudresourcemanagerV1beta1Args({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetProjectCloudresourcemanagerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetProjectCloudresourcemanagerV1beta1Args(
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

