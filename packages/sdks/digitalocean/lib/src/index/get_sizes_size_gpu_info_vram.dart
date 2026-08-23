// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSizesSizeGpuInfoVram {
  /// The amount of VRAM available to the GPU.
  final pulumi.Input<int> amount;
  /// The unit of measurement for the VRAM amount.
  final pulumi.Input<String> unit;

  /// Creates a new [GetSizesSizeGpuInfoVram].
  /// [amount] The amount of VRAM available to the GPU.
  /// [unit] The unit of measurement for the VRAM amount.
  const GetSizesSizeGpuInfoVram({
    required this.amount,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'unit': unit,
    };
  }

  factory GetSizesSizeGpuInfoVram.fromMap(Map<String, dynamic> map) {
    return GetSizesSizeGpuInfoVram(
      amount: pulumi.Input.fromValue(map['amount'] as int),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
