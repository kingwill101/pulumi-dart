// ignore_for_file: unused_element, unnecessary_cast


/// Per database settings of an elastic pool.
class ElasticPoolPerDatabaseSettings {
  /// Auto Pause Delay for per database within pool
  final int? autoPauseDelay;
  /// The maximum capacity any one database can consume.
  final double? maxCapacity;
  /// The minimum capacity all databases are guaranteed.
  final double? minCapacity;

  /// Creates a new [ElasticPoolPerDatabaseSettings].
  /// [autoPauseDelay] Auto Pause Delay for per database within pool
  /// [maxCapacity] The maximum capacity any one database can consume.
  /// [minCapacity] The minimum capacity all databases are guaranteed.
  ElasticPoolPerDatabaseSettings({
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

  factory ElasticPoolPerDatabaseSettings.fromMap(Map<String, dynamic> map) {
    return ElasticPoolPerDatabaseSettings(
      autoPauseDelay: map['autoPauseDelay'] == null ? null : map['autoPauseDelay'] as int,
      maxCapacity: map['maxCapacity'] == null ? null : map['maxCapacity'] as double,
      minCapacity: map['minCapacity'] == null ? null : map['minCapacity'] as double,
    );
  }
}

