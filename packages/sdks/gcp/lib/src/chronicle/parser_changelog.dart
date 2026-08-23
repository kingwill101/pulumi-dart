// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_changelog_entry.dart';

class ParserChangelog {
  /// all the changelog of a parser.
  /// Structure is documented below.
  final pulumi.Input<List<ParserChangelogEntry>>? entries;

  /// Creates a new [ParserChangelog].
  /// [entries] all the changelog of a parser.
  const ParserChangelog({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<ParserChangelogEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<ParserChangelogEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ParserChangelog.fromMap(Map<String, dynamic> map) {
    return ParserChangelog(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParserChangelogEntry>(guardedValue, (value) => ParserChangelogEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
