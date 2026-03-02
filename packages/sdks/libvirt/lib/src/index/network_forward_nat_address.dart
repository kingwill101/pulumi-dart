// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkForwardNatAddress {
  /// Sets the ending address for the NAT range.
  final pulumi.Input<String> end;
  /// Specifies the starting address for the NAT range.
  final pulumi.Input<String> start;

  /// Creates a new [NetworkForwardNatAddress].
  /// [end] Sets the ending address for the NAT range.
  /// [start] Specifies the starting address for the NAT range.
  NetworkForwardNatAddress({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory NetworkForwardNatAddress.fromMap(Map<String, dynamic> map) {
    return NetworkForwardNatAddress(
      end: (map['end'] as String).input(),
      start: (map['start'] as String).input(),
    );
  }
}

