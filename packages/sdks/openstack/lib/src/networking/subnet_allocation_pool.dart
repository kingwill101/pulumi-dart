// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubnetAllocationPool {
  /// The ending address.
  final pulumi.Input<String> end;
  /// The starting address.
  final pulumi.Input<String> start;

  /// Creates a new [SubnetAllocationPool].
  /// [end] The ending address.
  /// [start] The starting address.
  SubnetAllocationPool({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory SubnetAllocationPool.fromMap(Map<String, dynamic> map) {
    return SubnetAllocationPool(
      end: pulumi.Input.fromValue(map['end'] as String),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}

