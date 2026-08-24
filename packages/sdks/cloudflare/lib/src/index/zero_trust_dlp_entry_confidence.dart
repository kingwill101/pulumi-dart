// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpEntryConfidence {
  /// Indicates whether this entry has AI remote service validation.
  final pulumi.Input<bool?>? aiContextAvailable;
  /// Indicates whether this entry has any form of validation that is not an AI remote service.
  final pulumi.Input<bool?>? available;

  /// Creates a new [ZeroTrustDlpEntryConfidence].
  /// [aiContextAvailable] Indicates whether this entry has AI remote service validation.
  /// [available] Indicates whether this entry has any form of validation that is not an AI remote service.
  const ZeroTrustDlpEntryConfidence({
    this.aiContextAvailable,
    this.available,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiContextAvailable': ?aiContextAvailable,
      'available': ?available,
    };
  }

  factory ZeroTrustDlpEntryConfidence.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpEntryConfidence(
      aiContextAvailable: (() { final guardedValue = map['aiContextAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      available: (() { final guardedValue = map['available']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
