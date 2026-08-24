// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DlpPredefinedProfileEntry {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> id;

  /// Creates a new [DlpPredefinedProfileEntry].
  /// [enabled] Required.
  /// [id] Required.
  const DlpPredefinedProfileEntry({
    required this.enabled,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'id': id,
    };
  }

  factory DlpPredefinedProfileEntry.fromMap(Map<String, dynamic> map) {
    return DlpPredefinedProfileEntry(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
