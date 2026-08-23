// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabase.
class GetDatabaseResult {
  final String clusterName;
  /// The time the data that should be kept in cache for fast queries as ISO 8601 timespan.
  final String hotCachePeriod;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region in which the managed Kusto Database exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The size of the database in bytes.
  final double size;
  /// The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan.
  final String softDeletePeriod;

  /// Creates a new [GetDatabaseResult].
  /// [clusterName] Required.
  /// [hotCachePeriod] The time the data that should be kept in cache for fast queries as ISO 8601 timespan.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which the managed Kusto Database exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [size] The size of the database in bytes.
  /// [softDeletePeriod] The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan.
  const GetDatabaseResult({
    required this.clusterName,
    required this.hotCachePeriod,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.size,
    required this.softDeletePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'hotCachePeriod': hotCachePeriod,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'size': size,
      'softDeletePeriod': softDeletePeriod,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      clusterName: map['clusterName'] as String,
      hotCachePeriod: map['hotCachePeriod'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      size: map['size'] as double,
      softDeletePeriod: map['softDeletePeriod'] as String,
    );
  }
}
