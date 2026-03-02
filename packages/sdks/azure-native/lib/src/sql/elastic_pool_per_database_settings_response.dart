// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Per database settings of an elastic pool.
class ElasticPoolPerDatabaseSettingsResponse {
  /// Auto Pause Delay for per database within pool
  final pulumi.Input<int>? autoPauseDelay;
  /// The maximum capacity any one database can consume.
  final pulumi.Input<double>? maxCapacity;
  /// The minimum capacity all databases are guaranteed.
  final pulumi.Input<double>? minCapacity;

  /// Creates a new [ElasticPoolPerDatabaseSettingsResponse].
  /// [autoPauseDelay] Auto Pause Delay for per database within pool
  /// [maxCapacity] The maximum capacity any one database can consume.
  /// [minCapacity] The minimum capacity all databases are guaranteed.
  ElasticPoolPerDatabaseSettingsResponse({
    this.autoPauseDelay,
    this.maxCapacity,
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPauseDelay': ?autoPauseDelay,
      'maxCapacity': ?maxCapacity,
      'minCapacity': ?minCapacity,
    };
  }

  factory ElasticPoolPerDatabaseSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ElasticPoolPerDatabaseSettingsResponse(
      autoPauseDelay: map['autoPauseDelay'] == null ? null : (map['autoPauseDelay']! as int).input(),
      maxCapacity: map['maxCapacity'] == null ? null : (map['maxCapacity']! as double).input(),
      minCapacity: map['minCapacity'] == null ? null : (map['minCapacity']! as double).input(),
    );
  }
}

