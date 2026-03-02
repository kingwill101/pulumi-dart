// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubnetAllocationPool {
  final pulumi.Input<String> end;
  final pulumi.Input<String> start;

  /// Creates a new [GetSubnetAllocationPool].
  /// [end] Required.
  /// [start] Required.
  GetSubnetAllocationPool({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory GetSubnetAllocationPool.fromMap(Map<String, dynamic> map) {
    return GetSubnetAllocationPool(
      end: (map['end'] as String).input(),
      start: (map['start'] as String).input(),
    );
  }
}

