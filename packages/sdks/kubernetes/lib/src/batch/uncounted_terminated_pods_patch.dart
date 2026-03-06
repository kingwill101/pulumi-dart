// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
class UncountedTerminatedPodsPatch {
  /// failed holds UIDs of failed Pods.
  final pulumi.Input<List<String>>? failed;
  /// succeeded holds UIDs of succeeded Pods.
  final pulumi.Input<List<String>>? succeeded;

  /// Creates a new [UncountedTerminatedPodsPatch].
  /// [failed] failed holds UIDs of failed Pods.
  /// [succeeded] succeeded holds UIDs of succeeded Pods.
  const UncountedTerminatedPodsPatch({
    this.failed,
    this.succeeded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failed': ?failed,
      'succeeded': ?succeeded,
    };
  }

  factory UncountedTerminatedPodsPatch.fromMap(Map<String, dynamic> map) {
    return UncountedTerminatedPodsPatch(
      failed: (() { final guardedValue = map['failed']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      succeeded: (() { final guardedValue = map['succeeded']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

