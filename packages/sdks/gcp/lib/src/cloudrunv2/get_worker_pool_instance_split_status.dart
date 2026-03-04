// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolInstanceSplitStatus {
  /// Specifies percent of the instance split to this Revision.
  final pulumi.Input<int> percent;

  /// Revision to which this instance split is assigned.
  final pulumi.Input<String> revision;

  /// The allocation type for this instance split.
  final pulumi.Input<String> type;

  /// Creates a new [GetWorkerPoolInstanceSplitStatus].
  /// [percent] Specifies percent of the instance split to this Revision.
  /// [revision] Revision to which this instance split is assigned.
  /// [type] The allocation type for this instance split.
  GetWorkerPoolInstanceSplitStatus({
    required this.percent,
    required this.revision,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': percent,
      'revision': revision,
      'type': type,
    };
  }

  factory GetWorkerPoolInstanceSplitStatus.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolInstanceSplitStatus(
      percent: pulumi.Input.fromValue(map['percent'] as int),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
