// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPartition.
class GetPartitionResult {
  /// Optional. The etag for this partition.
  final String? etag;
  /// Immutable. The location of the entity data within the partition, for example, gs://bucket/path/to/entity/key1=value1/key2=value2. Or projects//datasets//tables/
  final String? location;
  /// Partition values used in the HTTP URL must be double encoded. For example, url_encode(url_encode(value)) can be used to encode "US:CA/CA#Sunnyvale so that the request URL ends with "/partitions/US%253ACA/CA%2523Sunnyvale". The name field in the response retains the encoded format.
  final String? name;
  /// Immutable. The set of values representing the partition, which correspond to the partition schema defined in the parent entity.
  final List<String>? values;

  /// Creates a new [GetPartitionResult].
  /// [etag] Optional. The etag for this partition.
  /// [location] Immutable. The location of the entity data within the partition, for example, gs://bucket/path/to/entity/key1=value1/key2=value2. Or projects//datasets//tables/
  /// [name] Partition values used in the HTTP URL must be double encoded. For example, url_encode(url_encode(value)) can be used to encode "US:CA/CA#Sunnyvale so that the request URL ends with "/partitions/US%253ACA/CA%2523Sunnyvale". The name field in the response retains the encoded format.
  /// [values] Immutable. The set of values representing the partition, which correspond to the partition schema defined in the parent entity.
  const GetPartitionResult({
    this.etag,
    this.location,
    this.name,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'values': ?values,
    };
  }

  factory GetPartitionResult.fromMap(Map<String, dynamic> map) {
    return GetPartitionResult(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
