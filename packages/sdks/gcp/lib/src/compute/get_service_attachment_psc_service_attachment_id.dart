// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceAttachmentPscServiceAttachmentId {
  /// The high 64 bits of the PSC service attachment ID.
  final pulumi.Input<String> high;
  /// The low 64 bits of the PSC service attachment ID.
  final pulumi.Input<String> low;

  /// Creates a new [GetServiceAttachmentPscServiceAttachmentId].
  /// [high] The high 64 bits of the PSC service attachment ID.
  /// [low] The low 64 bits of the PSC service attachment ID.
  const GetServiceAttachmentPscServiceAttachmentId({
    required this.high,
    required this.low,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'high': high,
      'low': low,
    };
  }

  factory GetServiceAttachmentPscServiceAttachmentId.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentPscServiceAttachmentId(
      high: pulumi.Input.fromValue(map['high'] as String),
      low: pulumi.Input.fromValue(map['low'] as String),
    );
  }
}
