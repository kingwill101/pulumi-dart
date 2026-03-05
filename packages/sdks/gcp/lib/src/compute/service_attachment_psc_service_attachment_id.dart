// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAttachmentPscServiceAttachmentId {
  /// (Output)
  /// The high 64 bits of the PSC service attachment ID.
  final pulumi.Input<String>? high;
  /// (Output)
  /// The low 64 bits of the PSC service attachment ID.
  final pulumi.Input<String>? low;

  /// Creates a new [ServiceAttachmentPscServiceAttachmentId].
  /// [high] (Output)
  /// [low] (Output)
  ServiceAttachmentPscServiceAttachmentId({
    this.high,
    this.low,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'high': ?high,
      'low': ?low,
    };
  }

  factory ServiceAttachmentPscServiceAttachmentId.fromMap(Map<String, dynamic> map) {
    return ServiceAttachmentPscServiceAttachmentId(
      high: (() { final guardedValue = map['high']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      low: (() { final guardedValue = map['low']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

