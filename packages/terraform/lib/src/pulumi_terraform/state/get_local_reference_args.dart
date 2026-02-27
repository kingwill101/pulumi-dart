// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLocalReference.
class GetLocalReferenceArgs {
  /// The path to the tfstate file. This defaults to "terraform.tfstate" relative to the root module by default.
  final Input<String>? path;

  /// The path to non-default workspaces.
  final Input<String>? workspaceDir;

  GetLocalReferenceArgs({
    this.path,
    this.workspaceDir,
  });

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
      path: Input.asOptionalInput<String>(map['path']),
      workspaceDir: Input.asOptionalInput<String>(map['workspaceDir']),
    );
  }
}
