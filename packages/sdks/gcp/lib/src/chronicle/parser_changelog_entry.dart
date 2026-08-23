// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ParserChangelogEntry {
  /// (Output)
  /// The changelog message.
  final pulumi.Input<String>? changeMessage;
  /// (Output)
  /// Time at which changelog was created.
  final pulumi.Input<String>? createTime;
  /// (Output)
  /// Flag whether the entry is added or deleted.
  /// This will be true in case of rollback and false in case of upgrade.
  final pulumi.Input<bool>? deleted;
  /// (Output)
  /// The parser version for which the changelog is created.
  final pulumi.Input<String>? parserVersion;

  /// Creates a new [ParserChangelogEntry].
  /// [changeMessage] (Output)
  /// [createTime] (Output)
  /// [deleted] (Output)
  /// [parserVersion] (Output)
  const ParserChangelogEntry({
    this.changeMessage,
    this.createTime,
    this.deleted,
    this.parserVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeMessage': ?changeMessage,
      'createTime': ?createTime,
      'deleted': ?deleted,
      'parserVersion': ?parserVersion,
    };
  }

  factory ParserChangelogEntry.fromMap(Map<String, dynamic> map) {
    return ParserChangelogEntry(
      changeMessage: (() { final guardedValue = map['changeMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleted: (() { final guardedValue = map['deleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      parserVersion: (() { final guardedValue = map['parserVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
