// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_databases_autonomous_database_property_connection_string_all_connection_string.dart';
import 'get_autonomous_databases_autonomous_database_property_connection_string_profile.dart';

class GetAutonomousDatabasesAutonomousDatabasePropertyConnectionString {
  /// A list of all connection strings that can be used to connect to the
  /// Autonomous Database.
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString>> allConnectionStrings;
  /// The database service provides the least level of resources to each SQL
  /// statement, but supports the most number of concurrent SQL statements.
  final pulumi.Input<String> dedicated;
  /// The database service provides the highest level of resources to each SQL
  /// statement.
  final pulumi.Input<String> high;
  /// The database service provides the least level of resources to each SQL
  /// statement.
  final pulumi.Input<String> low;
  /// The database service provides a lower level of resources to each SQL
  /// statement.
  final pulumi.Input<String> medium;
  /// A list of connection string profiles to allow clients to group, filter, and
  /// select values based on the structured metadata.
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringProfile>> profiles;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabasePropertyConnectionString].
  /// [allConnectionStrings] A list of all connection strings that can be used to connect to the
  /// [dedicated] The database service provides the least level of resources to each SQL
  /// [high] The database service provides the highest level of resources to each SQL
  /// [low] The database service provides the least level of resources to each SQL
  /// [medium] The database service provides a lower level of resources to each SQL
  /// [profiles] A list of connection string profiles to allow clients to group, filter, and
  const GetAutonomousDatabasesAutonomousDatabasePropertyConnectionString({
    required this.allConnectionStrings,
    required this.dedicated,
    required this.high,
    required this.low,
    required this.medium,
    required this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allConnectionStrings': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString>, List<Map<String, dynamic>>>(allConnectionStrings, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dedicated': dedicated,
      'high': high,
      'low': low,
      'medium': medium,
      'profiles': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringProfile>, List<Map<String, dynamic>>>(profiles, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyConnectionString.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyConnectionString(
      allConnectionStrings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString>(map['allConnectionStrings']!, (value) => GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringAllConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      dedicated: pulumi.Input.fromValue(map['dedicated'] as String),
      high: pulumi.Input.fromValue(map['high'] as String),
      low: pulumi.Input.fromValue(map['low'] as String),
      medium: pulumi.Input.fromValue(map['medium'] as String),
      profiles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringProfile>(map['profiles']!, (value) => GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringProfile.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

