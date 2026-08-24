// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineSinkConfigPartitioning {
  /// The pattern of the date string
  final pulumi.Input<String> timePattern;

  /// Creates a new [GetPipelineSinkConfigPartitioning].
  /// [timePattern] The pattern of the date string
  const GetPipelineSinkConfigPartitioning({
    required this.timePattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timePattern': timePattern,
    };
  }

  factory GetPipelineSinkConfigPartitioning.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinkConfigPartitioning(
      timePattern: pulumi.Input.fromValue(map['timePattern'] as String),
    );
  }
}
