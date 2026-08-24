// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpEntryConfidence {
  /// Indicates whether this entry has AI remote service validation.
  final pulumi.Input<bool> aiContextAvailable;
  /// Indicates whether this entry has any form of validation that is not an AI remote service.
  final pulumi.Input<bool> available;

  /// Creates a new [GetZeroTrustDlpEntryConfidence].
  /// [aiContextAvailable] Indicates whether this entry has AI remote service validation.
  /// [available] Indicates whether this entry has any form of validation that is not an AI remote service.
  const GetZeroTrustDlpEntryConfidence({
    required this.aiContextAvailable,
    required this.available,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiContextAvailable': aiContextAvailable,
      'available': available,
    };
  }

  factory GetZeroTrustDlpEntryConfidence.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpEntryConfidence(
      aiContextAvailable: pulumi.Input.fromValue(map['aiContextAvailable'] as bool),
      available: pulumi.Input.fromValue(map['available'] as bool),
    );
  }
}
