// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_source_file.dart';

class RulesetSource {
  /// `File` set constituting the `Source` bundle.
  final pulumi.Input<List<RulesetSourceFile>> files;
  /// `Language` of the `Source` bundle. If unspecified, the language will default to `FIREBASE_RULES`. Possible values: LANGUAGE_UNSPECIFIED, FIREBASE_RULES, EVENT_FLOW_TRIGGERS
  ///
  /// - - -
  final pulumi.Input<String>? language;

  /// Creates a new [RulesetSource].
  /// [files] `File` set constituting the `Source` bundle.
  /// [language] `Language` of the `Source` bundle. If unspecified, the language will default to `FIREBASE_RULES`. Possible values: LANGUAGE_UNSPECIFIED, FIREBASE_RULES, EVENT_FLOW_TRIGGERS
  const RulesetSource({
    required this.files,
    this.language,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.mapInputValue<List<RulesetSourceFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<RulesetSourceFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'language': ?language,
    };
  }

  factory RulesetSource.fromMap(Map<String, dynamic> map) {
    return RulesetSource(
      files: pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetSourceFile>(map['files']!, (value) => RulesetSourceFile.fromMap((value as Map).cast<String, dynamic>()))),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

