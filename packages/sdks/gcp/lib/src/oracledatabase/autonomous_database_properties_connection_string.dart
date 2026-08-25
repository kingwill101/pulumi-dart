// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_properties_connection_string_all_connection_string.dart';
import 'autonomous_database_properties_connection_string_profile.dart';

class AutonomousDatabasePropertiesConnectionString {
  /// A list of all connection strings that can be used to connect to the
  /// Autonomous Database.
  final pulumi.Input<List<AutonomousDatabasePropertiesConnectionStringAllConnectionString>?>? allConnectionStrings;
  /// The database service provides the least level of resources to each SQL
  /// statement, but supports the most number of concurrent SQL statements.
  final pulumi.Input<String?>? dedicated;
  /// The database service provides the highest level of resources to each SQL
  /// statement.
  final pulumi.Input<String?>? high;
  /// The database service provides the least level of resources to each SQL
  /// statement.
  final pulumi.Input<String?>? low;
  /// The database service provides a lower level of resources to each SQL
  /// statement.
  final pulumi.Input<String?>? medium;
  /// A list of connection string profiles to allow clients to group, filter, and
  /// select values based on the structured metadata.
  final pulumi.Input<List<AutonomousDatabasePropertiesConnectionStringProfile>?>? profiles;

  /// Creates a new [AutonomousDatabasePropertiesConnectionString].
  /// [allConnectionStrings] A list of all connection strings that can be used to connect to the
  /// [dedicated] The database service provides the least level of resources to each SQL
  /// [high] The database service provides the highest level of resources to each SQL
  /// [low] The database service provides the least level of resources to each SQL
  /// [medium] The database service provides a lower level of resources to each SQL
  /// [profiles] A list of connection string profiles to allow clients to group, filter, and
  const AutonomousDatabasePropertiesConnectionString({
    this.allConnectionStrings,
    this.dedicated,
    this.high,
    this.low,
    this.medium,
    this.profiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allConnectionStrings': ?pulumi.Input.mapOptionalInputValue<List<AutonomousDatabasePropertiesConnectionStringAllConnectionString>, List<Map<String, dynamic>>>(allConnectionStrings, (value) => pulumi.Input.encodeList<AutonomousDatabasePropertiesConnectionStringAllConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dedicated': ?dedicated,
      'high': ?high,
      'low': ?low,
      'medium': ?medium,
      'profiles': ?pulumi.Input.mapOptionalInputValue<List<AutonomousDatabasePropertiesConnectionStringProfile>, List<Map<String, dynamic>>>(profiles, (value) => pulumi.Input.encodeList<AutonomousDatabasePropertiesConnectionStringProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutonomousDatabasePropertiesConnectionString.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesConnectionString(
      allConnectionStrings: (() { final guardedValue = map['allConnectionStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutonomousDatabasePropertiesConnectionStringAllConnectionString>(guardedValue, (value) => AutonomousDatabasePropertiesConnectionStringAllConnectionString.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dedicated: (() { final guardedValue = map['dedicated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      high: (() { final guardedValue = map['high']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      low: (() { final guardedValue = map['low']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      medium: (() { final guardedValue = map['medium']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profiles: (() { final guardedValue = map['profiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutonomousDatabasePropertiesConnectionStringProfile>(guardedValue, (value) => AutonomousDatabasePropertiesConnectionStringProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
