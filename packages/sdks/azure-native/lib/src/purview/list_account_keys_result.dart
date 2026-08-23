// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listAccountKeys.
class ListAccountKeysResult {
  /// Gets or sets the primary connection string.
  final String? atlasKafkaPrimaryEndpoint;
  /// Gets or sets the secondary connection string.
  final String? atlasKafkaSecondaryEndpoint;

  /// Creates a new [ListAccountKeysResult].
  /// [atlasKafkaPrimaryEndpoint] Gets or sets the primary connection string.
  /// [atlasKafkaSecondaryEndpoint] Gets or sets the secondary connection string.
  const ListAccountKeysResult({
    this.atlasKafkaPrimaryEndpoint,
    this.atlasKafkaSecondaryEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atlasKafkaPrimaryEndpoint': ?atlasKafkaPrimaryEndpoint,
      'atlasKafkaSecondaryEndpoint': ?atlasKafkaSecondaryEndpoint,
    };
  }

  factory ListAccountKeysResult.fromMap(Map<String, dynamic> map) {
    return ListAccountKeysResult(
      atlasKafkaPrimaryEndpoint: (() { final guardedValue = map['atlasKafkaPrimaryEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      atlasKafkaSecondaryEndpoint: (() { final guardedValue = map['atlasKafkaSecondaryEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
