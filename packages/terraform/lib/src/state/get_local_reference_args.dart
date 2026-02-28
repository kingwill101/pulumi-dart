// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_state_get_local_reference_args_doc}
/// Arguments for getLocalReference.
/// {@endtemplate}
/// {@macro pulumi_state_get_local_reference_args_doc}
class GetLocalReferenceArgs {
  /// The path to the tfstate file. This defaults to "terraform.tfstate" relative to the root module by default.
  final pulumi.Input<String>? path;

  /// The path to non-default workspaces.
  final pulumi.Input<String>? workspaceDir;

  /// Creates a new [GetLocalReferenceArgs].
  /// [path] The path to the tfstate file. This defaults to "terraform.tfstate" relative to the root module by default.
  /// [workspaceDir] The path to non-default workspaces.
  GetLocalReferenceArgs({String? path, String? workspaceDir})
    : path = pulumi.Input.asOptionalInput<String>(path),
      workspaceDir = pulumi.Input.asOptionalInput<String>(workspaceDir);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final workspaceDirValue = workspaceDir;
    if (workspaceDirValue != null) {
      map['workspaceDir'] = workspaceDirValue;
    }
    return map;
  }

  factory GetLocalReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalReferenceArgs(
      path: map['path'] == null ? null : map['path'] as String,
      workspaceDir: map['workspaceDir'] == null
          ? null
          : map['workspaceDir'] as String,
    );
  }
}
