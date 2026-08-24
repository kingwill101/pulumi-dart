// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DlpCustomProfileSharedEntry {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> entryId;
  /// Available values: "custom", "predefined", "integration", "exact*data", "document*fingerprint".
  final pulumi.Input<String> entryType;

  /// Creates a new [DlpCustomProfileSharedEntry].
  /// [enabled] Required.
  /// [entryId] Required.
  /// [entryType] Available values: "custom", "predefined", "integration", "exact*data", "document*fingerprint".
  const DlpCustomProfileSharedEntry({
    required this.enabled,
    required this.entryId,
    required this.entryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'entryId': entryId,
      'entryType': entryType,
    };
  }

  factory DlpCustomProfileSharedEntry.fromMap(Map<String, dynamic> map) {
    return DlpCustomProfileSharedEntry(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      entryId: pulumi.Input.fromValue(map['entryId'] as String),
      entryType: pulumi.Input.fromValue(map['entryType'] as String),
    );
  }
}
