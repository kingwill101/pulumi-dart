// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_properties_connection_string_all_connection_string.dart';
import 'autonomous_database_properties_connection_string_profile.dart';

class AutonomousDatabasePropertiesConnectionString {
  /// A list of all connection strings that can be used to connect to the
  /// Autonomous Database.
  final List<AutonomousDatabasePropertiesConnectionStringAllConnectionString>? allConnectionStrings;
  /// The database service provides the least level of resources to each SQL
  /// statement, but supports the most number of concurrent SQL statements.
  final String? dedicated;
  /// The database service provides the highest level of resources to each SQL
  /// statement.
  final String? high;
  /// The database service provides the least level of resources to each SQL
  /// statement.
  final String? low;
  /// The database service provides a lower level of resources to each SQL
  /// statement.
  final String? medium;
  /// A list of connection string profiles to allow clients to group, filter, and
  /// select values based on the structured metadata.
  final List<AutonomousDatabasePropertiesConnectionStringProfile>? profiles;

  /// Creates a new [AutonomousDatabasePropertiesConnectionString].
  /// [allConnectionStrings] A list of all connection strings that can be used to connect to the
  /// [dedicated] The database service provides the least level of resources to each SQL
  /// [high] The database service provides the highest level of resources to each SQL
  /// [low] The database service provides the least level of resources to each SQL
  /// [medium] The database service provides a lower level of resources to each SQL
  /// [profiles] A list of connection string profiles to allow clients to group, filter, and
  AutonomousDatabasePropertiesConnectionString({
    this.allConnectionStrings,
    this.dedicated,
    this.high,
    this.low,
    this.medium,
    this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allConnectionStrings': ?allConnectionStrings == null ? null : pulumi.Input.encodeList<AutonomousDatabasePropertiesConnectionStringAllConnectionString, Map<String, dynamic>>(allConnectionStrings!, (value) => value.toMap()),
      'dedicated': ?dedicated,
      'high': ?high,
      'low': ?low,
      'medium': ?medium,
      'profiles': ?profiles == null ? null : pulumi.Input.encodeList<AutonomousDatabasePropertiesConnectionStringProfile, Map<String, dynamic>>(profiles!, (value) => value.toMap()),
    };
  }

  factory AutonomousDatabasePropertiesConnectionString.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesConnectionString(
      allConnectionStrings: map['allConnectionStrings'] == null ? null : pulumi.Input.decodeList<AutonomousDatabasePropertiesConnectionStringAllConnectionString>(map['allConnectionStrings'], (value) => AutonomousDatabasePropertiesConnectionStringAllConnectionString.fromMap((value as Map).cast<String, dynamic>())),
      dedicated: map['dedicated'] == null ? null : map['dedicated'] as String,
      high: map['high'] == null ? null : map['high'] as String,
      low: map['low'] == null ? null : map['low'] as String,
      medium: map['medium'] == null ? null : map['medium'] as String,
      profiles: map['profiles'] == null ? null : pulumi.Input.decodeList<AutonomousDatabasePropertiesConnectionStringProfile>(map['profiles'], (value) => AutonomousDatabasePropertiesConnectionStringProfile.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

