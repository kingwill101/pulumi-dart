// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_property_connection_string_all_connection_string.dart';
import 'get_autonomous_database_property_connection_string_profile.dart';

class GetAutonomousDatabasePropertyConnectionString {
  /// A list of all connection strings that can be used to connect to the
  /// Autonomous Database.
  final pulumi.Input<List<GetAutonomousDatabasePropertyConnectionStringAllConnectionString>> allConnectionStrings;
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
  final pulumi.Input<List<GetAutonomousDatabasePropertyConnectionStringProfile>> profiles;

  /// Creates a new [GetAutonomousDatabasePropertyConnectionString].
  /// [allConnectionStrings] A list of all connection strings that can be used to connect to the
  /// [dedicated] The database service provides the least level of resources to each SQL
  /// [high] The database service provides the highest level of resources to each SQL
  /// [low] The database service provides the least level of resources to each SQL
  /// [medium] The database service provides a lower level of resources to each SQL
  /// [profiles] A list of connection string profiles to allow clients to group, filter, and
  GetAutonomousDatabasePropertyConnectionString({
    required this.allConnectionStrings,
    required this.dedicated,
    required this.high,
    required this.low,
    required this.medium,
    required this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allConnectionStrings': pulumi.Input.mapInputValue<List<GetAutonomousDatabasePropertyConnectionStringAllConnectionString>, List<Map<String, dynamic>>>(allConnectionStrings, (value) => pulumi.Input.encodeList<GetAutonomousDatabasePropertyConnectionStringAllConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dedicated': dedicated,
      'high': high,
      'low': low,
      'medium': medium,
      'profiles': pulumi.Input.mapInputValue<List<GetAutonomousDatabasePropertyConnectionStringProfile>, List<Map<String, dynamic>>>(profiles, (value) => pulumi.Input.encodeList<GetAutonomousDatabasePropertyConnectionStringProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAutonomousDatabasePropertyConnectionString.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyConnectionString(
      allConnectionStrings: (pulumi.Input.decodeList<GetAutonomousDatabasePropertyConnectionStringAllConnectionString>(map['allConnectionStrings'], (value) => GetAutonomousDatabasePropertyConnectionStringAllConnectionString.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dedicated: (map['dedicated'] as String).input(),
      high: (map['high'] as String).input(),
      low: (map['low'] as String).input(),
      medium: (map['medium'] as String).input(),
      profiles: (pulumi.Input.decodeList<GetAutonomousDatabasePropertyConnectionStringProfile>(map['profiles'], (value) => GetAutonomousDatabasePropertyConnectionStringProfile.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

