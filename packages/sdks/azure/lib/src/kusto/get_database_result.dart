// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabase.
class GetDatabaseResult {
  final String? clusterName;
  /// The time the data that should be kept in cache for fast queries as ISO 8601 timespan.
  final String? hotCachePeriod;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region in which the managed Kusto Database exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The size of the database in bytes.
  final double? size;
  /// The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan.
  final String? softDeletePeriod;

  /// Creates a new [GetDatabaseResult].
  /// [clusterName] Optional.
  /// [hotCachePeriod] The time the data that should be kept in cache for fast queries as ISO 8601 timespan.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which the managed Kusto Database exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [size] The size of the database in bytes.
  /// [softDeletePeriod] The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan.
  const GetDatabaseResult({
    this.clusterName,
    this.hotCachePeriod,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.size,
    this.softDeletePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'hotCachePeriod': ?hotCachePeriod,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'size': ?size,
      'softDeletePeriod': ?softDeletePeriod,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hotCachePeriod: (() { final guardedValue = map['hotCachePeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      softDeletePeriod: (() { final guardedValue = map['softDeletePeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
