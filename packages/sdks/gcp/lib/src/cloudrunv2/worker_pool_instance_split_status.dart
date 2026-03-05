// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolInstanceSplitStatus {
  /// (Output)
  /// Specifies percent of the instance split to this Revision.
  final pulumi.Input<int>? percent;
  /// (Output)
  /// Revision to which this instance split is assigned.
  final pulumi.Input<String>? revision;
  /// (Output)
  /// The allocation type for this instance split.
  final pulumi.Input<String>? type;

  /// Creates a new [WorkerPoolInstanceSplitStatus].
  /// [percent] (Output)
  /// [revision] (Output)
  /// [type] (Output)
  WorkerPoolInstanceSplitStatus({
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

  factory WorkerPoolInstanceSplitStatus.fromMap(Map<String, dynamic> map) {
    return WorkerPoolInstanceSplitStatus(
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

