// ignore_for_file: unused_element, unnecessary_cast


class ObjectReplicationRule {
  /// The time after which the Block Blobs created will be copies to the destination. Possible values are `OnlyNewObjects`, `Everything` and time in RFC3339 format: `2006-01-02T15:04:00Z`. Defaults to `OnlyNewObjects`.
  final String? copyBlobsCreatedAfter;
  /// The destination storage container name.
  final String destinationContainerName;
  /// Specifies a list of filters prefixes, the blobs whose names begin with which will be replicated.
  final List<String>? filterOutBlobsWithPrefixes;
  final String? name;
  /// The source storage container name.
  final String sourceContainerName;

  /// Creates a new [ObjectReplicationRule].
  /// [copyBlobsCreatedAfter] The time after which the Block Blobs created will be copies to the destination. Possible values are `OnlyNewObjects`, `Everything` and time in RFC3339 format: `2006-01-02T15:04:00Z`. Defaults to `OnlyNewObjects`.
  /// [destinationContainerName] The destination storage container name.
  /// [filterOutBlobsWithPrefixes] Specifies a list of filters prefixes, the blobs whose names begin with which will be replicated.
  /// [name] Optional.
  /// [sourceContainerName] The source storage container name.
  ObjectReplicationRule({
    this.copyBlobsCreatedAfter,
    required this.destinationContainerName,
    this.filterOutBlobsWithPrefixes,
    this.name,
    required this.sourceContainerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyBlobsCreatedAfter': ?copyBlobsCreatedAfter,
      'destinationContainerName': destinationContainerName,
      'filterOutBlobsWithPrefixes': ?filterOutBlobsWithPrefixes,
      'name': ?name,
      'sourceContainerName': sourceContainerName,
    };
  }

  factory ObjectReplicationRule.fromMap(Map<String, dynamic> map) {
    return ObjectReplicationRule(
      copyBlobsCreatedAfter: map['copyBlobsCreatedAfter'] == null ? null : map['copyBlobsCreatedAfter'] as String,
      destinationContainerName: map['destinationContainerName'] as String,
      filterOutBlobsWithPrefixes: map['filterOutBlobsWithPrefixes'] == null ? null : (map['filterOutBlobsWithPrefixes'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      sourceContainerName: map['sourceContainerName'] as String,
    );
  }
}

