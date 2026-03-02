// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
class UncountedTerminatedPods {
  /// failed holds UIDs of failed Pods.
  final pulumi.Input<List<String>>? failed;
  /// succeeded holds UIDs of succeeded Pods.
  final pulumi.Input<List<String>>? succeeded;

  /// Creates a new [UncountedTerminatedPods].
  /// [failed] failed holds UIDs of failed Pods.
  /// [succeeded] succeeded holds UIDs of succeeded Pods.
  UncountedTerminatedPods({
    this.failed,
    this.succeeded,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failed': ?failed,
      'succeeded': ?succeeded,
    };
  }

  factory UncountedTerminatedPods.fromMap(Map<String, dynamic> map) {
    return UncountedTerminatedPods(
      failed: map['failed'] == null ? null : ((map['failed']! as List).cast<String>()).input(),
      succeeded: map['succeeded'] == null ? null : ((map['succeeded']! as List).cast<String>()).input(),
    );
  }
}

