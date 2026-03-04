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
  GetLocalReferenceArgs({this.path, this.workspaceDir});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': ?path, 'workspaceDir': ?workspaceDir};
  }

  factory GetLocalReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalReferenceArgs(
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workspaceDir: (() {
        final guardedValue = map['workspaceDir'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
