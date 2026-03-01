// ignore_for_file: unused_element, unnecessary_cast


/// UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
class UncountedTerminatedPods {
  /// failed holds UIDs of failed Pods.
  final List<String>? failed;
  /// succeeded holds UIDs of succeeded Pods.
  final List<String>? succeeded;

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
      failed: map['failed'] == null ? null : (map['failed'] as List).cast<String>(),
      succeeded: map['succeeded'] == null ? null : (map['succeeded'] as List).cast<String>(),
    );
  }
}

