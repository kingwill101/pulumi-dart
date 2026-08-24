// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dlp_custom_profile_entry_pattern.dart';

class DlpCustomProfileEntry {
  final pulumi.Input<String?>? description;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String?>? entryId;
  final pulumi.Input<String> name;
  final pulumi.Input<DlpCustomProfileEntryPattern> pattern;

  /// Creates a new [DlpCustomProfileEntry].
  /// [description] Optional.
  /// [enabled] Required.
  /// [entryId] Optional.
  /// [name] Required.
  /// [pattern] Required.
  const DlpCustomProfileEntry({
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
      'pattern': pulumi.Input.mapInputValue<DlpCustomProfileEntryPattern, Map<String, dynamic>>(pattern, (value) => value.toMap()),
    };
  }

  factory DlpCustomProfileEntry.fromMap(Map<String, dynamic> map) {
    return DlpCustomProfileEntry(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      entryId: (() { final guardedValue = map['entryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      pattern: pulumi.Input.fromValue(DlpCustomProfileEntryPattern.fromMap((map['pattern']! as Map).cast<String, dynamic>())),
    );
  }
}
