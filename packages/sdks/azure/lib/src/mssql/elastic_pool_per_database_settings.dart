// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ElasticPoolPerDatabaseSettings {
  /// The maximum capacity any one database can consume.
  final pulumi.Input<double> maxCapacity;
  /// The minimum capacity all databases are guaranteed.
  final pulumi.Input<double> minCapacity;

  /// Creates a new [ElasticPoolPerDatabaseSettings].
  /// [maxCapacity] The maximum capacity any one database can consume.
  /// [minCapacity] The minimum capacity all databases are guaranteed.
  const ElasticPoolPerDatabaseSettings({
    required this.maxCapacity,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacity': maxCapacity,
      'minCapacity': minCapacity,
    };
  }

  factory ElasticPoolPerDatabaseSettings.fromMap(Map<String, dynamic> map) {
    return ElasticPoolPerDatabaseSettings(
      maxCapacity: pulumi.Input.fromValue(map['maxCapacity'] as double),
      minCapacity: pulumi.Input.fromValue(map['minCapacity'] as double),
    );
  }
}

