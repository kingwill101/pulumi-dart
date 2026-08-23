// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSqlDatabaseAutoscaleSetting {
  /// The maximum throughput of the SQL database (RU/s).
  final pulumi.Input<int> maxThroughput;

  /// Creates a new [GetSqlDatabaseAutoscaleSetting].
  /// [maxThroughput] The maximum throughput of the SQL database (RU/s).
  const GetSqlDatabaseAutoscaleSetting({
    required this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': maxThroughput,
    };
  }

  factory GetSqlDatabaseAutoscaleSetting.fromMap(Map<String, dynamic> map) {
    return GetSqlDatabaseAutoscaleSetting(
      maxThroughput: pulumi.Input.fromValue(map['maxThroughput'] as int),
    );
  }
}
