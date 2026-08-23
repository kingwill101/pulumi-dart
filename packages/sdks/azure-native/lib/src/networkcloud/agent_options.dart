// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentOptions {
  /// The number of hugepages to allocate.
  final pulumi.Input<double> hugepagesCount;
  /// The size of the hugepages to allocate.
  final pulumi.Input<String>? hugepagesSize;

  /// Creates a new [AgentOptions].
  /// [hugepagesCount] The number of hugepages to allocate.
  /// [hugepagesSize] The size of the hugepages to allocate.
  const AgentOptions({
    required this.hugepagesCount,
    this.hugepagesSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hugepagesCount': hugepagesCount,
      'hugepagesSize': ?hugepagesSize,
    };
  }

  factory AgentOptions.fromMap(Map<String, dynamic> map) {
    return AgentOptions(
      hugepagesCount: pulumi.Input.fromValue(map['hugepagesCount'] as double),
      hugepagesSize: (() { final guardedValue = map['hugepagesSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
