// ignore_for_file: unused_element, unnecessary_cast


class TransferJobTransferSpecObjectConditions {
  /// `exclude_prefixes` must follow the requirements described for `include_prefixes`. See [Requirements](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#ObjectConditions).
  final List<String>? excludePrefixes;
  /// If `include_prefixes` is specified, objects that satisfy the object conditions must have names that start with one of the `include_prefixes` and that do not start with any of the `exclude_prefixes`. If `include_prefixes` is not specified, all objects except those that have names starting with one of the `exclude_prefixes` must satisfy the object conditions. See [Requirements](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#ObjectConditions).
  final List<String>? includePrefixes;
  /// If specified, only objects with a "last modification time" before this timestamp and objects that don't have a "last modification time" are transferred. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? lastModifiedBefore;
  /// If specified, only objects with a "last modification time" on or after this timestamp and objects that don't have a "last modification time" are transferred. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? lastModifiedSince;
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? maxTimeElapsedSinceLastModification;
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? minTimeElapsedSinceLastModification;

  /// Creates a new [TransferJobTransferSpecObjectConditions].
  /// [excludePrefixes] `exclude_prefixes` must follow the requirements described for `include_prefixes`. See [Requirements](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#ObjectConditions).
  /// [includePrefixes] If `include_prefixes` is specified, objects that satisfy the object conditions must have names that start with one of the `include_prefixes` and that do not start with any of the `exclude_prefixes`. If `include_prefixes` is not specified, all objects except those that have names starting with one of the `exclude_prefixes` must satisfy the object conditions. See [Requirements](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#ObjectConditions).
  /// [lastModifiedBefore] If specified, only objects with a "last modification time" before this timestamp and objects that don't have a "last modification time" are transferred. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  /// [lastModifiedSince] If specified, only objects with a "last modification time" on or after this timestamp and objects that don't have a "last modification time" are transferred. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  /// [maxTimeElapsedSinceLastModification] A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  /// [minTimeElapsedSinceLastModification] A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  TransferJobTransferSpecObjectConditions({
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

  factory TransferJobTransferSpecObjectConditions.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecObjectConditions(
      excludePrefixes: map['excludePrefixes'] == null ? null : (map['excludePrefixes'] as List).cast<String>(),
      includePrefixes: map['includePrefixes'] == null ? null : (map['includePrefixes'] as List).cast<String>(),
      lastModifiedBefore: map['lastModifiedBefore'] == null ? null : map['lastModifiedBefore'] as String,
      lastModifiedSince: map['lastModifiedSince'] == null ? null : map['lastModifiedSince'] as String,
      maxTimeElapsedSinceLastModification: map['maxTimeElapsedSinceLastModification'] == null ? null : map['maxTimeElapsedSinceLastModification'] as String,
      minTimeElapsedSinceLastModification: map['minTimeElapsedSinceLastModification'] == null ? null : map['minTimeElapsedSinceLastModification'] as String,
    );
  }
}

