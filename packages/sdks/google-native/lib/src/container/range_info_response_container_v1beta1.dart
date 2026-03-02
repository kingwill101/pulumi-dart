// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RangeInfo contains the range name and the range utilization by this cluster.
class RangeInfoResponseContainerV1beta1 {
  /// [Output only] Name of a range.
  final pulumi.Input<String> rangeName;
  /// [Output only] The utilization of the range.
  final pulumi.Input<double> utilization;

  /// Creates a new [RangeInfoResponseContainerV1beta1].
  /// [rangeName] [Output only] Name of a range.
  /// [utilization] [Output only] The utilization of the range.
  RangeInfoResponseContainerV1beta1({
    required this.rangeName,
    required this.utilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rangeName': rangeName,
      'utilization': utilization,
    };
  }

  factory RangeInfoResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return RangeInfoResponseContainerV1beta1(
      rangeName: (map['rangeName'] as String).input(),
      utilization: (map['utilization'] as double).input(),
    );
  }
}

