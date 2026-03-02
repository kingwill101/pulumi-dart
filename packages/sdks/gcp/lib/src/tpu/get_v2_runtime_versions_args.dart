// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tpu_get_v2_runtime_versions_get_v2_runtime_versions_args_doc}
/// Arguments for getV2RuntimeVersions.
/// {@endtemplate}
/// {@macro pulumi_tpu_get_v2_runtime_versions_get_v2_runtime_versions_args_doc}
class GetV2RuntimeVersionsArgs {
  /// The project to list versions for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The zone to list versions for. If it
  /// is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetV2RuntimeVersionsArgs].
  /// [project] The project to list versions for. If it
  /// [zone] The zone to list versions for. If it
  GetV2RuntimeVersionsArgs({
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetV2RuntimeVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetV2RuntimeVersionsArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

