// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString {
  /// The database service provides the highest level of resources to each SQL
  /// statement.
  final pulumi.Input<String> high;
  /// The database service provides the least level of resources to each SQL
  /// statement.
  final pulumi.Input<String> low;
  /// The database service provides a lower level of resources to each SQL
  /// statement.
  final pulumi.Input<String> medium;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString].
  /// [high] The database service provides the highest level of resources to each SQL
  /// [low] The database service provides the least level of resources to each SQL
  /// [medium] The database service provides a lower level of resources to each SQL
  const GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString({
    required this.high,
    required this.low,
    required this.medium,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'high': high,
      'low': low,
      'medium': medium,
    };
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString(
      high: pulumi.Input.fromValue(map['high'] as String),
      low: pulumi.Input.fromValue(map['low'] as String),
      medium: pulumi.Input.fromValue(map['medium'] as String),
    );
  }
}

