// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabasePropertiesConnectionStringAllConnectionString {
  /// The database service provides the highest level of resources to each SQL
  /// statement.
  final pulumi.Input<String>? high;
  /// The database service provides the least level of resources to each SQL
  /// statement.
  final pulumi.Input<String>? low;
  /// The database service provides a lower level of resources to each SQL
  /// statement.
  final pulumi.Input<String>? medium;

  /// Creates a new [AutonomousDatabasePropertiesConnectionStringAllConnectionString].
  /// [high] The database service provides the highest level of resources to each SQL
  /// [low] The database service provides the least level of resources to each SQL
  /// [medium] The database service provides a lower level of resources to each SQL
  AutonomousDatabasePropertiesConnectionStringAllConnectionString({
    this.high,
    this.low,
    this.medium,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'high': ?high,
      'low': ?low,
      'medium': ?medium,
    };
  }

  factory AutonomousDatabasePropertiesConnectionStringAllConnectionString.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesConnectionStringAllConnectionString(
      high: map['high'] == null ? null : (map['high']! as String).input(),
      low: map['low'] == null ? null : (map['low']! as String).input(),
      medium: map['medium'] == null ? null : (map['medium']! as String).input(),
    );
  }
}

