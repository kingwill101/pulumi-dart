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
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      objectType: (() {
        final guardedValue = map['objectType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      owner: (() {
        final guardedValue = map['owner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privileges: (() {
        final guardedValue = map['privileges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      role: (() {
        final guardedValue = map['role'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schema: (() {
        final guardedValue = map['schema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      withGrantOption: (() {
        final guardedValue = map['withGrantOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
