// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpPredefinedProfileEntry {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustDlpPredefinedProfileEntry].
  /// [enabled] Required.
  /// [id] Required.
  const ZeroTrustDlpPredefinedProfileEntry({
    required this.enabled,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'id': id,
    };
  }

  factory ZeroTrustDlpPredefinedProfileEntry.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpPredefinedProfileEntry(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
