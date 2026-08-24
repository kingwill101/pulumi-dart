// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineSinkConfigPartitioning {
  /// The pattern of the date string
  final pulumi.Input<String?>? timePattern;

  /// Creates a new [PipelineSinkConfigPartitioning].
  /// [timePattern] The pattern of the date string
  const PipelineSinkConfigPartitioning({
    this.timePattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timePattern': ?timePattern,
    };
  }

  factory PipelineSinkConfigPartitioning.fromMap(Map<String, dynamic> map) {
    return PipelineSinkConfigPartitioning(
      timePattern: (() { final guardedValue = map['timePattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
