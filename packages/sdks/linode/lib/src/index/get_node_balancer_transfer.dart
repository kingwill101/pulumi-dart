// ignore_for_file: unused_element, unnecessary_cast


class GetNodeBalancerTransfer {
  /// The total transfer, in MB, used by this NodeBalancer for the current month
  final double in_;
  /// The total inbound transfer, in MB, used for this NodeBalancer for the current month
  final double out;
  /// The total outbound transfer, in MB, used for this NodeBalancer for the current month
  final double total;

  /// Creates a new [GetNodeBalancerTransfer].
  /// [in_] The total transfer, in MB, used by this NodeBalancer for the current month
  /// [out] The total inbound transfer, in MB, used for this NodeBalancer for the current month
  /// [total] The total outbound transfer, in MB, used for this NodeBalancer for the current month
  GetNodeBalancerTransfer({
    required this.in_,
    required this.out,
    required this.total,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'in': in_,
      'out': out,
      'total': total,
    };
  }

  factory GetNodeBalancerTransfer.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerTransfer(
      in_: map['in'] as double,
      out: map['out'] as double,
      total: map['total'] as double,
    );
  }
}

