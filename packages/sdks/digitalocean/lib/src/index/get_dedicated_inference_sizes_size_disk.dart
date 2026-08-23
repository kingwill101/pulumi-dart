// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedInferenceSizesSizeDisk {
  /// The disk size in GiB.
  final pulumi.Input<int> sizeGb;
  /// The disk type.
  final pulumi.Input<String> type;

  /// Creates a new [GetDedicatedInferenceSizesSizeDisk].
  /// [sizeGb] The disk size in GiB.
  /// [type] The disk type.
  const GetDedicatedInferenceSizesSizeDisk({
    required this.sizeGb,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeGb': sizeGb,
      'type': type,
    };
  }

  factory GetDedicatedInferenceSizesSizeDisk.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceSizesSizeDisk(
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
