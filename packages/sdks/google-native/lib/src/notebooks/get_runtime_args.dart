// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notebooks_v1_get_runtime_args_doc}
/// Arguments for getRuntime.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v1_get_runtime_args_doc}
class GetRuntimeArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runtimeId;

  /// Creates a new [GetRuntimeArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [runtimeId] Required.
  GetRuntimeArgs({
    required this.location,
    this.project,
    required this.runtimeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'runtimeId': runtimeId,
    };
  }

  factory GetRuntimeArgs.fromMap(Map<String, dynamic> map) {
    return GetRuntimeArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      runtimeId: (map['runtimeId'] as String).input(),
    );
  }
}

