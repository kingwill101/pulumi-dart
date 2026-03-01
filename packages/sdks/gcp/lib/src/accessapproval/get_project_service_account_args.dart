// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accessapproval_get_project_service_account_get_project_service_account_args_doc}
/// Arguments for getProjectServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_accessapproval_get_project_service_account_get_project_service_account_args_doc}
class GetProjectServiceAccountArgs {
  /// The project ID the service account was created for.
  final pulumi.Input<String> projectId;

  /// Creates a new [GetProjectServiceAccountArgs].
  /// [projectId] The project ID the service account was created for.
  GetProjectServiceAccountArgs({
    required pulumi.Output<String> projectId,
  }) :
      projectId = pulumi.Input.asInput<String>(projectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
    };
  }

  factory GetProjectServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectServiceAccountArgs(
      projectId: pulumi.Output.create<String>(map['projectId'] as String),
    );
  }
}

