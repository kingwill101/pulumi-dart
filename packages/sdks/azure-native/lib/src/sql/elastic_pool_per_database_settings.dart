// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Per database settings of an elastic pool.
class ElasticPoolPerDatabaseSettings {
  /// Auto Pause Delay for per database within pool
  final pulumi.Input<int>? autoPauseDelay;
  /// The maximum capacity any one database can consume.
  final pulumi.Input<double>? maxCapacity;
  /// The minimum capacity all databases are guaranteed.
  final pulumi.Input<double>? minCapacity;

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
      autoPauseDelay: (() { final guardedValue = map['autoPauseDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minCapacity: (() { final guardedValue = map['minCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

