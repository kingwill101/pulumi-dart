// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultPrivileg resources.
class DefaultPrivilegState {
  /// The database to grant default privileges for this role.
  final pulumi.Input<String>? database;
  /// The PostgreSQL object type to set the default privileges on (one of: table, sequence, function, routine, type, schema).
  final pulumi.Input<String>? objectType;
  /// Specifies the role that creates objects for which the default privileges will be applied.
  final pulumi.Input<String>? owner;
  /// List of privileges (e.g., SELECT, INSERT, UPDATE, DELETE) to grant on new objects created by the owner. An empty list could be provided to revoke all default privileges for this role.
  final pulumi.Input<List<String>>? privileges;
  /// The role that will automatically be granted the specified privileges on new objects created by the owner.
  final pulumi.Input<String>? role;
  /// The database schema to set default privileges for this role.
  final pulumi.Input<String>? schema;
  /// Permit the grant recipient to grant it to others
  final pulumi.Input<bool>? withGrantOption;

  /// Creates a new [DefaultPrivilegState].
  /// [database] The database to grant default privileges for this role.
  /// [objectType] The PostgreSQL object type to set the default privileges on (one of: table, sequence, function, routine, type, schema).
  /// [owner] Specifies the role that creates objects for which the default privileges will be applied.
  /// [privileges] List of privileges (e.g., SELECT, INSERT, UPDATE, DELETE) to grant on new objects created by the owner. An empty list could be provided to revoke all default privileges for this role.
  /// [role] The role that will automatically be granted the specified privileges on new objects created by the owner.
  /// [schema] The database schema to set default privileges for this role.
  /// [withGrantOption] Permit the grant recipient to grant it to others
  DefaultPrivilegState({
    this.database,
    this.objectType,
    this.owner,
    this.privileges,
    this.role,
    this.schema,
    this.withGrantOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'objectType': ?objectType,
      'owner': ?owner,
      'privileges': ?privileges,
      'role': ?role,
      'schema': ?schema,
      'withGrantOption': ?withGrantOption,
    };
  }

  factory DefaultPrivilegState.fromMap(Map<String, dynamic> map) {
    return DefaultPrivilegState(
      database: map['database'] == null ? null : (map['database']! as String).input(),
      objectType: map['objectType'] == null ? null : (map['objectType']! as String).input(),
      owner: map['owner'] == null ? null : (map['owner']! as String).input(),
      privileges: map['privileges'] == null ? null : ((map['privileges']! as List).cast<String>()).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      schema: map['schema'] == null ? null : (map['schema']! as String).input(),
      withGrantOption: map['withGrantOption'] == null ? null : (map['withGrantOption']! as bool).input(),
    );
  }
}

