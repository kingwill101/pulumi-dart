// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeBalancerTransfer {
  /// The total transfer, in MB, used by this NodeBalancer for the current month
  final pulumi.Input<double> in_;

  /// The total inbound transfer, in MB, used for this NodeBalancer for the current month
  final pulumi.Input<double> out;

  /// The total outbound transfer, in MB, used for this NodeBalancer for the current month
  final pulumi.Input<double> total;

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
    return <String, dynamic>{'in': in_, 'out': out, 'total': total};
  }

  factory GetNodeBalancerTransfer.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerTransfer(
      in_: pulumi.Input.fromValue(map['in'] as double),
      out: pulumi.Input.fromValue(map['out'] as double),
      total: pulumi.Input.fromValue(map['total'] as double),
    );
  }
}
