// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a read pool instance.
class ReadPoolConfigAlloydbV1beta {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final pulumi.Input<int?>? nodeCount;

  /// Creates a new [ReadPoolConfigAlloydbV1beta].
  /// [nodeCount] Read capacity, i.e. number of nodes in a read pool instance.
  const ReadPoolConfigAlloydbV1beta({
    this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeCount': ?nodeCount,
    };
  }

  factory ReadPoolConfigAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return ReadPoolConfigAlloydbV1beta(
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
