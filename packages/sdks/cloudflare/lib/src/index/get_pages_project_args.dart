// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_pages_project_get_pages_project_args_doc}
/// Arguments for getPagesProject.
/// {@endtemplate}
/// {@macro pulumi_index_get_pages_project_get_pages_project_args_doc}
class GetPagesProjectArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Name of the project.
  final pulumi.Input<String> projectName;

  /// Creates a new [GetPagesProjectArgs].
  /// [accountId] Identifier.
  /// [projectName] Name of the project.
  const GetPagesProjectArgs({
    this.accountId,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'projectName': projectName,
    };
  }

  factory GetPagesProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
    );
  }
}
