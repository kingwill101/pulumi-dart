// ignore_for_file: unused_element, unnecessary_cast


class GetSqlDatabaseAutoscaleSetting {
  /// The maximum throughput of the SQL database (RU/s).
  final int maxThroughput;

  /// Creates a new [GetSqlDatabaseAutoscaleSetting].
  /// [maxThroughput] The maximum throughput of the SQL database (RU/s).
  GetSqlDatabaseAutoscaleSetting({
    required this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': maxThroughput,
    };
  }

  factory GetSqlDatabaseAutoscaleSetting.fromMap(Map<String, dynamic> map) {
    return GetSqlDatabaseAutoscaleSetting(
      maxThroughput: map['maxThroughput'] as int,
    );
  }
}

