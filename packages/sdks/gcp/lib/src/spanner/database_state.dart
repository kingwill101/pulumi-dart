// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_encryption_config.dart';

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
  /// The dialect of the Cloud Spanner Database.
  /// If it is not provided, "GOOGLE_STANDARD_SQL" will be used.
  /// Possible values are: `GOOGLE_STANDARD_SQL`, `POSTGRESQL`.
  final pulumi.Input<String>? databaseDialect;
  final pulumi.Input<List<String>>? ddls;
  /// The default time zone for the database. The default time zone must be a valid name
  /// from the tz database. Default value is "America/Los_angeles".
  final pulumi.Input<String>? defaultTimeZone;
  /// Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// in state, a `destroy` or `update` that would delete the instance will fail.
  final pulumi.Input<bool>? deletionProtection;
  final pulumi.Input<bool>? enableDropProtection;
  /// Encryption configuration for the database
  /// Structure is documented below.
  final pulumi.Input<DatabaseEncryptionConfig>? encryptionConfig;
  /// The instance to create the database on.
  final pulumi.Input<String>? instance;
  /// A unique identifier for the database, which cannot be changed after the
  /// instance is created. Values are of the form `[a-z][-_a-z0-9]*[a-z0-9]`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// An explanation of the status of the database.
  final pulumi.Input<String>? state;
  /// The retention period for the database. The retention period must be between 1 hour
  /// and 7 days, and can be specified in days, hours, minutes, or seconds. For example,
  /// the values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.
  /// If this property is used, you must avoid adding new DDL statements to `ddl` that
  /// update the database's version_retention_period.
  final pulumi.Input<String>? versionRetentionPeriod;

  /// Creates a new [DatabaseState].
  /// [databaseDialect] The dialect of the Cloud Spanner Database.
  /// [ddls] Optional.
  /// [defaultTimeZone] The default time zone for the database. The default time zone must be a valid name
  /// [deletionProtection] Whether or not to allow the provider to destroy the instance. Unless this field is set to false
  /// [enableDropProtection] Optional.
  /// [encryptionConfig] Encryption configuration for the database
  /// [instance] The instance to create the database on.
  /// [name] A unique identifier for the database, which cannot be changed after the
  /// [project] The ID of the project in which the resource belongs.
  /// [state] An explanation of the status of the database.
  /// [versionRetentionPeriod] The retention period for the database. The retention period must be between 1 hour
  DatabaseState({
    this.databaseDialect,
    this.ddls,
    this.defaultTimeZone,
    this.deletionProtection,
    this.enableDropProtection,
    this.encryptionConfig,
    this.instance,
    this.name,
    this.project,
    this.state,
    this.versionRetentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseDialect': ?databaseDialect,
      'ddls': ?ddls,
      'defaultTimeZone': ?defaultTimeZone,
      'deletionProtection': ?deletionProtection,
      'enableDropProtection': ?enableDropProtection,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<DatabaseEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'instance': ?instance,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'versionRetentionPeriod': ?versionRetentionPeriod,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      databaseDialect: map['databaseDialect'] == null ? null : (map['databaseDialect']! as String).input(),
      ddls: map['ddls'] == null ? null : ((map['ddls']! as List).cast<String>()).input(),
      defaultTimeZone: map['defaultTimeZone'] == null ? null : (map['defaultTimeZone']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      enableDropProtection: map['enableDropProtection'] == null ? null : (map['enableDropProtection']! as bool).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (DatabaseEncryptionConfig.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())).input(),
      instance: map['instance'] == null ? null : (map['instance']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      versionRetentionPeriod: map['versionRetentionPeriod'] == null ? null : (map['versionRetentionPeriod']! as String).input(),
    );
  }
}

