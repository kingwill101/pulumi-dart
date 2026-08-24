// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_custom_profile_entry_pattern.dart';

class ZeroTrustDlpCustomProfileEntry {
  final pulumi.Input<String?>? description;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String?>? entryId;
  final pulumi.Input<String> name;
  final pulumi.Input<ZeroTrustDlpCustomProfileEntryPattern> pattern;

  /// Creates a new [ZeroTrustDlpCustomProfileEntry].
  /// [description] Optional.
  /// [enabled] Required.
  /// [entryId] Optional.
  /// [name] Required.
  /// [pattern] Required.
  const ZeroTrustDlpCustomProfileEntry({
    this.description,
    required this.enabled,
    this.entryId,
    required this.name,
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': enabled,
      'entryId': ?entryId,
      'name': name,
      'pattern': pulumi.Input.mapInputValue<ZeroTrustDlpCustomProfileEntryPattern, Map<String, dynamic>>(pattern, (value) => value.toMap()),
    };
  }

  factory ZeroTrustDlpCustomProfileEntry.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpCustomProfileEntry(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      entryId: (() { final guardedValue = map['entryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      pattern: pulumi.Input.fromValue(ZeroTrustDlpCustomProfileEntryPattern.fromMap((map['pattern']! as Map).cast<String, dynamic>())),
    );
  }
}
