// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A LUN(Logical Unit Number) range.
class LunRangeResponse {
  /// Number of LUNs to create.
  final pulumi.Input<int> quantity;
  /// The requested size of each LUN, in GB.
  final pulumi.Input<int> sizeGb;

  /// Creates a new [LunRangeResponse].
  /// [quantity] Number of LUNs to create.
  /// [sizeGb] The requested size of each LUN, in GB.
  const LunRangeResponse({
    required this.quantity,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quantity': quantity,
      'sizeGb': sizeGb,
    };
  }

  factory LunRangeResponse.fromMap(Map<String, dynamic> map) {
    return LunRangeResponse(
      quantity: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['quantity'])),
      sizeGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['sizeGb'])),
    );
  }
}
