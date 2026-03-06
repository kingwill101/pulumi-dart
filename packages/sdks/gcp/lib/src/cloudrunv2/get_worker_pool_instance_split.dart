// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolInstanceSplit {
  /// Specifies percent of the instance split to this Revision. This defaults to zero if unspecified.
  final pulumi.Input<int> percent;
  /// Revision to which to assign this portion of instances, if split allocation is by revision.
  final pulumi.Input<String> revision;
  /// The allocation type for this instance split. Possible values: ["INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST", "INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION"]
  final pulumi.Input<String> type;

  /// Creates a new [GetWorkerPoolInstanceSplit].
  /// [percent] Specifies percent of the instance split to this Revision. This defaults to zero if unspecified.
  /// [revision] Revision to which to assign this portion of instances, if split allocation is by revision.
  /// [type] The allocation type for this instance split. Possible values: ["INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST", "INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION"]
  const GetWorkerPoolInstanceSplit({
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

  factory GetWorkerPoolInstanceSplit.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolInstanceSplit(
      percent: pulumi.Input.fromValue(map['percent'] as int),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

