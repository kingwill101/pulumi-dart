// ignore_for_file: unused_element, unnecessary_cast


class GetCloudVmClusterIormConfigCacheDbPlan {
  /// The database name. For the default `DbPlan`, the `dbName` is `default`.
  final String dbName;
  /// The flash cache limit for this database. This value is internally configured based on the share value assigned to the database.
  final String flashCacheLimit;
  /// The relative priority of this database.
  final int share;

  /// Creates a new [GetCloudVmClusterIormConfigCacheDbPlan].
  /// [dbName] The database name. For the default `DbPlan`, the `dbName` is `default`.
  /// [flashCacheLimit] The flash cache limit for this database. This value is internally configured based on the share value assigned to the database.
  /// [share] The relative priority of this database.
  GetCloudVmClusterIormConfigCacheDbPlan({
    required this.dbName,
    required this.flashCacheLimit,
    required this.share,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbName': dbName,
      'flashCacheLimit': flashCacheLimit,
      'share': share,
    };
  }

  factory GetCloudVmClusterIormConfigCacheDbPlan.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterIormConfigCacheDbPlan(
      dbName: map['dbName'] as String,
      flashCacheLimit: map['flashCacheLimit'] as String,
      share: map['share'] as int,
    );
  }
}

