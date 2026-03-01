// ignore_for_file: unused_element, unnecessary_cast


class SubnetAllocationPool {
  /// The ending address.
  final String end;
  /// The starting address.
  final String start;

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
      end: map['end'] as String,
      start: map['start'] as String,
    );
  }
}

