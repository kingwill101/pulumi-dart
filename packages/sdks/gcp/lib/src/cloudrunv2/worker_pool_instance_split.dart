// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolInstanceSplit {
  /// Specifies percent of the instance split to this Revision. This defaults to zero if unspecified.
  final pulumi.Input<int>? percent;
  /// Revision to which to assign this portion of instances, if split allocation is by revision.
  final pulumi.Input<String>? revision;
  /// The allocation type for this instance split.
  /// Possible values are: `INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST`, `INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION`.
  final pulumi.Input<String>? type;

  /// Creates a new [WorkerPoolInstanceSplit].
  /// [percent] Specifies percent of the instance split to this Revision. This defaults to zero if unspecified.
  /// [revision] Revision to which to assign this portion of instances, if split allocation is by revision.
  /// [type] The allocation type for this instance split.
  WorkerPoolInstanceSplit({
    this.percent,
    this.revision,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': ?percent,
      'revision': ?revision,
      'type': ?type,
    };
  }

  factory WorkerPoolInstanceSplit.fromMap(Map<String, dynamic> map) {
    return WorkerPoolInstanceSplit(
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

