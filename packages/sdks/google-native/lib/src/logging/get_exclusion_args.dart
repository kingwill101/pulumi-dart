// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_exclusion_args_doc}
/// Arguments for getExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_exclusion_args_doc}
class GetExclusionArgs {
  final pulumi.Input<String> exclusionId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExclusionArgs].
  /// [exclusionId] Required.
  /// [project] Optional.
  GetExclusionArgs({
    required this.exclusionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionId': exclusionId,
      'project': ?project,
    };
  }

  factory GetExclusionArgs.fromMap(Map<String, dynamic> map) {
    return GetExclusionArgs(
      exclusionId: (map['exclusionId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

