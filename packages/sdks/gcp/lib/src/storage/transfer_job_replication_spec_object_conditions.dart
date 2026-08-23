// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobReplicationSpecObjectConditions {
  /// `excludePrefixes` must follow the requirements described for `includePrefixes`. See [Requirements](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#ObjectConditions).
  final pulumi.Input<List<String>>? excludePrefixes;
  /// If `includePrefixes` is specified, objects that satisfy the object conditions must have names that start with one of the `includePrefixes` and that do not start with any of the `excludePrefixes`. If `includePrefixes` is not specified, all objects except those that have names starting with one of the `excludePrefixes` must satisfy the object conditions. See [Requirements](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#ObjectConditions).
  final pulumi.Input<List<String>>? includePrefixes;
  /// If specified, only objects with a "last modification time" before this timestamp and objects that don't have a "last modification time" are transferred. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? lastModifiedBefore;
  /// If specified, only objects with a "last modification time" on or after this timestamp and objects that don't have a "last modification time" are transferred. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? lastModifiedSince;
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? maxTimeElapsedSinceLastModification;
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? minTimeElapsedSinceLastModification;

  /// Creates a new [TransferJobReplicationSpecObjectConditions].
  /// [excludePrefixes] `excludePrefixes` must follow the requirements described for `includePrefixes`. See [Requirements](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#ObjectConditions).
  /// [includePrefixes] If `includePrefixes` is specified, objects that satisfy the object conditions must have names that start with one of the `includePrefixes` and that do not start with any of the `excludePrefixes`. If `includePrefixes` is not specified, all objects except those that have names starting with one of the `excludePrefixes` must satisfy the object conditions. See [Requirements](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#ObjectConditions).
  /// [lastModifiedBefore] If specified, only objects with a "last modification time" before this timestamp and objects that don't have a "last modification time" are transferred. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  /// [lastModifiedSince] If specified, only objects with a "last modification time" on or after this timestamp and objects that don't have a "last modification time" are transferred. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  /// [maxTimeElapsedSinceLastModification] A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  /// [minTimeElapsedSinceLastModification] A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  const TransferJobReplicationSpecObjectConditions({
    this.excludePrefixes,
    this.includePrefixes,
    this.lastModifiedBefore,
    this.lastModifiedSince,
    this.maxTimeElapsedSinceLastModification,
    this.minTimeElapsedSinceLastModification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludePrefixes': ?excludePrefixes,
      'includePrefixes': ?includePrefixes,
      'lastModifiedBefore': ?lastModifiedBefore,
      'lastModifiedSince': ?lastModifiedSince,
      'maxTimeElapsedSinceLastModification': ?maxTimeElapsedSinceLastModification,
      'minTimeElapsedSinceLastModification': ?minTimeElapsedSinceLastModification,
    };
  }

  factory TransferJobReplicationSpecObjectConditions.fromMap(Map<String, dynamic> map) {
    return TransferJobReplicationSpecObjectConditions(
      excludePrefixes: (() { final guardedValue = map['excludePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includePrefixes: (() { final guardedValue = map['includePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lastModifiedBefore: (() { final guardedValue = map['lastModifiedBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedSince: (() { final guardedValue = map['lastModifiedSince']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTimeElapsedSinceLastModification: (() { final guardedValue = map['maxTimeElapsedSinceLastModification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minTimeElapsedSinceLastModification: (() { final guardedValue = map['minTimeElapsedSinceLastModification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
